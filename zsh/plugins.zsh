plugins=(
    cp
    extract
    fortune
    gem
    git
    gpg-agent
    history
    pip
    python
    ruby
    rsync
    tmux
    url-tools
    virtualenvwrapper
    wakeonlan)

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    plugins+=(debian gnu-colors)
elif [[ "$OSTYPE" == "darwin"* ]]; then
    plugins+=(brew copydir copyfile osx)
fi
