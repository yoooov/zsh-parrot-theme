# zsh-parrot-theme
Custom theme to imitate Parrot Security prompt for oh-my-zsh

Execute install.zsh to copy and set theme to your ${HOME}/.zshrc automatically.


### vpn connect or not
```
cond=$(ifconfig utun2 &> /dev/null && echo -e "true")

if [[ "${vpn_cond}" =~ "true" ]]; then
  psvar[7]=$(ip addr show utun2 | awk 'NR==2 { gsub(/\/.*/, "", $2); print $2 }');
else
  psvar[7]='~';
fi
```

theme:

```
if [[ "${vpn_cond}" =~ "true" ]]; then
  PROMPT=$'%{$fg[yellow]%}┌─%(?,,%{$fg[yellow]%}[%{$fg_bold[yellow]%}✗%{$reset_color%}%{$fg[yellow]%}]─)[%{$fg[cyan]%}%7v%{$reset_color%}%{$fg[yellow]%}]─[%{$fg_bold[white]%}%n%{$reset_color%}%{$fg_bold[yellow]%}@%{$fg_bold[cyan]%}%m%{$reset_color%}%{$fg[yellow]%}]─[%{$fg[cyan]%}%8v%{$reset_color%}%{$fg[yellow]%}]─[%{$fg[white]%}%~%{$reset_color%}%{$fg[yellow]%}] %{$(git_prompt_info)%}
%{$fg[yellow]%}└──╼ %{$fg_bold[yellow]%}%(!.#.$)%{$reset_color%} '
PS2=$' %{$fg[green]%}|>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}[%{$fg_bold[white]%} • "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[yellow]%} ] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡%{$reset_color%}"
else
  PROMPT=$'%{$fg[yellow]%}┌─%(?,,%{$fg[yellow]%}[%{$fg_bold[yellow]%}✗%{$reset_color%}%{$fg[yellow]%}]─)[%{$fg_bold[white]%}%n%{$reset_color%}%{$fg_bold[yellow]%}@%{$fg_bold[cyan]%}%m%{$reset_color%}%{$fg[yellow]%}]─[%{$fg[cyan]%}%8v%{$reset_color%}%{$fg[yellow]%}]─[%{$fg[white]%}%~%{$reset_color%}%{$fg[yellow]%}] %{$(git_prompt_info)%}
%{$fg[yellow]%}└──╼ %{$fg_bold[yellow]%}%(!.#.$)%{$reset_color%} '
PS2=$' %{$fg[green]%}|>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}[%{$fg_bold[white]%} • "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[yellow]%} ] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡%{$reset_color%}"
fi
```
