# cd into root
cd ~

if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias py='python3.11'
alias python='python3.11'
alias ll="ls -al"

# Clear fish_user_paths before setting it to avoid duplicates if config.fish is sourced multiple times
set -e fish_user_paths

# Adding paths
set -gx PYTHONPATH /home/dgtlrst/.local/lib/python3.11/site-packages:$PYTHONPATH
set -U fish_user_paths /usr/local/bin $fish_user_paths
set -U fish_user_paths /home/dgtlrst/.local/lib/python3.11/site-packages $fish_user_paths
set -U fish_user_paths /usr/local/lib/python3.11/dist-packages $fish_user_paths
set -U fish_user_paths /usr/lib/python3/dist-packages $fish_user_paths
set -U fish_user_paths /home/dgtlrst/st/stm32cubeide_1.12.1/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.linux64_1.0.200.202301161003/tools/bin $fish_user_paths
set -U fish_user_paths /home/dgtlrst/st/stm32cubeide_1.12.1/plugins/com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.linux64_2.0.600.202301161003/tools/bin $fish_user_paths

# openjdk + eclipse
set -U fish_user_paths /home/dgtlrst/software/j-eclipse/openlogic-openjdk-11.0.22+7-linux-x64/bin $fish_user_paths
set -U fish_user_paths /home/dgtlrst/software/j-eclipse/eclipse $fish_user_paths

# flutter
set -U fish_user_paths /home/dgtlrst/software/flutter/bin $fish_user_paths

function fish_prompt
    # Set the username color to red
    set_color red
    echo -n (whoami) ''

    # Set the path color to cyan
    set_color cyan
    echo -n (prompt_pwd)

    # Display git branch info in magenta if inside a Git repository
    set_color magenta
    echo -n (__fish_git_prompt)

    # Reset color to normal and display the prompt symbol
    set_color normal
    echo -n '> '
end

set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showdirtystate 'yes'

# x-server setup
set -gx DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
set -gx DISPLAY 169.254.254.74:0.0
