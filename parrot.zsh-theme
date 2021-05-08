PROMPT=$'%{$fg[yellow]%}┌─%(?,,%{$fg[yellow]%}[%{$fg_bold[yellow]%}✗%{$reset_color%}%{$fg[yellow]%}]─)[%{$fg_bold[white]%}%n%{$reset_color%}%{$fg_bold[yellow]%}@%{$fg_bold[cyan]%}%m%{$reset_color%}%{$fg[yellow]%}]─[%{$fg[cyan]%}%8v%{$reset_color%}%{$fg[yellow]%}]─[%{$fg[white]%}%~%{$reset_color%}%{$fg[yellow]%}] %{$(git_prompt_info)%}
%{$fg[yellow]%}└──╼ %{$fg_bold[yellow]%}%(!.#.$)%{$reset_color%} '
PS2=$' %{$fg[green]%}|>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}[%{$fg_bold[white]%} • "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[yellow]%} ] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡%{$reset_color%}"
