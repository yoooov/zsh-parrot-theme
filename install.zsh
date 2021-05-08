#!/bin/zsh

theme_name=parrot
theme_file=$theme_name.zsh-theme
oh_my_zsh_themes_folder=${HOME}/.oh-my-zsh/themes

if [ ! -d $oh_my_zsh_themes_folder ]; then
    echo "ERROR: $oh_my_zsh_themes_folder not found."
    exit 1
fi

cp $theme_file $oh_my_zsh_themes_folder

if [ -f $oh_my_zsh_themes_folder/$theme_file ]; then
    echo "Installed theme"
else
    echo "ERROR: Couldn't copy to $oh_my_zsh_themes_folder"
    exit 1
fi

sed -i -e 's/ZSH_THEME=".*"/ZSH_THEME="'$theme_name'"/' ${HOME}/.zshrc

# MAC OS X LOCAL IPV4 / change your interface name accordingly
echo 'psvar[8]=$(ifconfig en0 | grep "inet " | cut -d " " -f 2)' >> ${HOME}/.zshrc

# LINUX OS LOCAL IPV4 / change your interface name accordingly
# echo 'psvar[8]=$(ifconfig eth0 | grep "inet " | awk -F" " "{print $2}")' >> ${HOME}/.zshrc
# echo 'psvar[8]=$(ip -o -4  address show  | awk \' NR==2 { gsub(/\/.*/, "", $4); print $4 } \')'  >> ${HOME}/.zshrc

# EXTERNAL IPV4
echo 'psvar[9]=$(curl -s http://ip-api.com/csv | cut -d , -f 14)' >> ${HOME}/.zshrc

if grep -Fxq 'ZSH_THEME="'$theme_name'"' ${HOME}/.zshrc ; then 
    echo "Theme set on .zshrc"
    source "${HOME}/.zshrc"
else
    echo "ERROR: Theme not set on .zshrc"
    exit 1
fi
