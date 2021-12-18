# Morphx - meh.
if [ $UID -eq 0 || $USER -eq root ]; then NCOLOR="red"; else NCOLOR="yellow"; fi

# returns ✘ if there are errors, nothing otherwise
return_status() {
   echo "%{$fg[red]%}%(?..✘)%{$reset_color%}"
}

PROMPT='%{$fg[red]%}[%{$fg_bold[white]%}%1/%{$fg[red]%}]%{$fg[$NCOLOR]%}➤ %{$reset_color%}'
#RPROMPT='%{$fg[red]%}:[%{$fg_bold[white]%}$(git_prompt_info)%{$fg[red]%}]%{$reset_color%}'
RPROMPT='$(return_status)$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}[%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[red]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%}✨%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%} ➦%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[blue]%} ✂%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%} ✱%{$reset_color%}"
