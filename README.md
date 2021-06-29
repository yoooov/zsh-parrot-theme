# zsh-parrot-theme
Custom theme to imitate Parrot Security prompt for oh-my-zsh

Execute install.zsh to copy and set theme to your ${HOME}/.zshrc automatically.


### vpn connect or not
```
cond=$(ifconfig utun2 &> /dev/null && echo -e "true")

if [[ "${cond}" =~ "true" ]]; then
  psvar[7]=$(ip addr show utun2 | awk 'NR==2 { gsub(/\/.*/, "", $2); print $2 }');
else
  psvar[7]='~';
fi
```
