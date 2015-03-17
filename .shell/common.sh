## assume colors work
export TERM=xterm-256color

## less options
export LESS='-g -i -M -R -S -w -z-4'

## GitHub API
github_token="$HOME/.github"
[[ -e $github_token ]] && source $github_token

## homebrew GitHub API
homebrew_token="$HOME/.homebrew"
[[ -e $homebrew_token ]] && source $homebrew_token

## path
source ~/.shell/path-edit.sh
path_front "bin" "$HOME/bin" "/usr/local/bin" "$HOME/.rbenv/bin"
path_back "/sbin" "/bin" "/usr/sbin" "/usr/bin" "$HOME/.cask/bin"

## aliases
source ~/.shell/aliases.sh

## pyenv
command -v pyenv >/dev/null 2>&1 && eval "$(pyenv init -)"
command -v pyenv-virtualenv-init >/dev/null 2>&1 && eval "$(pyenv virtualenv-init -)"

## local settings
[[ -e ~/.localrc ]] && source ~/.localrc

## use http://www.funtoo.org/Keychain

## rbenv
[[ -e ~/.rbenv ]] && eval "$(rbenv init -)"

## prompt
[[ -e ~/.liquidprompt/ ]] && source ~/.liquidprompt/liquidprompt
