if status is-interactive
    set fish_greeting
    eval "$(/opt/homebrew/bin/brew shellenv)"
    set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
    set -x GOPATH $HOME/go
    set -x PATH $PATH $GOPATH/bin

    starship init fish | source
    zoxide init fish | source
end
