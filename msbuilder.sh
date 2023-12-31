#!/bin/bash

RED_TEXT_COLOR='\e[0;31m'
GREEN_TEXT_COLOR='\e[0;32m'
YELLOW_TEXT_COLOR='\e[0;33m'
BLUE_TEXT_COLOR='\e[0;34m'
PURPLE_TEXT_COLOR='\e[0;35m'
CYAN_TEXT_COLOR='\e[0;36m'
WHITE_TEXT_COLOR='\e[0;37m'

BOLD_TEXT_FORMAT='\e[1m'
RESET_TEXT_FORMAT='\e[0m'

CURRENT_DIRECTORY='$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )'
FANCY_MS_BUILDER_FILE='fancymsbuilder.yaml'

# argument parser
for ARGUMENT in "$@"; do export "${ARGUMENT%%=*}"="${ARGUMENT#*=}"; done

yaml_template() {
    echo -e """
        metadata:
            version: 1.0
    """ > $FANCY_MS_BUILDER_FILE
}

# $1 is the color and $2 is the string
colorful_print() {
    echo -e "\n$1 $2 $RESET_TEXT_FORMAT"
}

echo -e '                                                                             '
echo -e '.___________________________________________________________________________.'
echo -e '|  :       :          :     :          :        :      :    :          :    |'
echo -e '|      :          :    ___      :    ___ :         ___            :        :|'
echo -e '|        ___          /  /\  :      /  /\      :  /  /\   :      __    :    |'
echo -e '| :     /  /\        /  /::\       /  /::|       /  /::\        |  |\       |'
echo -e '|      /  /::\   :  /  /:/\:\   : /  /:|:|    : /  /:/\:\ :   : |  |:|  :  :|'
echo -e '|     /  /:/\:\    /  /::\ \:\   /  /:/|:|__   /  /:/  \:\      |  |:|      |'
echo -e '| :  /  /::\ \:\  /__/:/\:\_\:\ /__/:/ |:| /\ /__/:/ \  \:\     |__|:|__  : |'
echo -e '|   /__/:/\:\ \:\ \__\/  \:\/:/ \__\/  |:|/:/ \  \:\  \__\/  :  /  /::::\   |'
echo -e '|   \__\/  \:\_\/      \__\::/      |  |:/:/   \  \:\          /  /:/----   |'
echo -e '| :      \  \:\    :   /  /:/  :  : |__|::/     \  \:\   :    /__/:/ :    : |'
echo -e '|     :   \__\/ :     /__/:/        /__/:/    :  \  \:\       \__\/         |'
echo -e '|  :       :          \__\/  :      \__\/         \__\/     :          :   :|'
echo -e '|      :       :     :     :     :          :           :      :   :     :  |'
echo -e '|___________________________________________________________________________|'
echo -e '                                                                             '
echo -e '                                  -V1.0-                                     '

colorful_print $PURPLE_TEXT_COLOR 'Where your solution is located?'

if [ ! -f '$CURRENT_DIRECTORY/$FANCY_MS_BUILDER_FILE' ]; then
    colorful_print $RED_TEXT_COLOR "the configuration file $FANCY_MS_BUILDER_FILE was not found in current directory!"
    exit 1
fi

if ! [ -x "$(command -v dotnet)" ]; then
    colorful_print $RED_TEXT_COLOR "dotnet is not installed on the system!"
    exit 1
fi
