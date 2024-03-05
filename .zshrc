export pyenv_virtualenv_disable_prompt=1

if command -v pyenv >/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init - | sed s/precmd/chpwd/g)"
fi

export LC_ALL=en_US.UTF-8

if [ -x "$(command -v nvim)" ]; then
  alias vi=nvim
  alias vim=nvim
fi

alias ez="eza --icons --group-directories-first"
