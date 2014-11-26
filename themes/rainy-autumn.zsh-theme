# zsh rainy-autumn theme with git integration
# bring happiness to your pacific nw command line
# jameydeorio

function _prompt_info() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo $(git_prompt_info)
  fi
}

PROMPT='%{%f%k%b%}
%F{green}[%F{white}%n%F{green}@%F{white}%m %F{magenta}%~%F{green}]%}$reset_color $(_prompt_info)
 ☔️  ☁️  🍁  '

RPROMPT='%{%B%F{blue}%}%@ - %D{%A, %B %d, %Y}%{%f%k%b%}'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[black]%}‹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[black]%}› %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
