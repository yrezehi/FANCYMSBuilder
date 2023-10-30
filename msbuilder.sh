#!/bin/bash

setup_utlities() {
    BLACK_TEXT_COLOR='\e[0;30m'
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
}

yaml_template() {
    echo -e """
        metadata:
            version: 1.0
    """ > $FANCY_MS_BUILDER_FILE
)

# Generate the YAML file
echo "$yaml_content" > "$file_path"
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

echo -e 'Where your solution is located>'

if [ -e ]