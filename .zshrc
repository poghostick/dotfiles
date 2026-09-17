source ~/.cachyos-config.zsh

if [[ "${TERM:l}" == "alacritty" && -z "$DROPDOWN" ]]; then
    autoload -Uz add-zsh-hook

    _first_prompt=1

    add-zsh-hook precmd _add_prompt_spacing

    _add_prompt_spacing() {
        if (( _first_prompt )); then
            _first_prompt=0
        else
            print
        fi
    }
fi

eval "$(atuin init zsh)"

if [[ -z "$DROPDOWN" ]]; then
    if [[ "$TERM_PROGRAM" == "vscode" ]]; then
        export STARSHIP_CONFIG="$HOME/.config/starship-vscode.toml"
    elif [[ -n "$TMUX" ]]; then
        export STARSHIP_CONFIG="$HOME/.config/starship-tmux.toml"
    else
        export STARSHIP_CONFIG="$HOME/.config/starship.toml"
    fi

    eval "$(starship init zsh)"
else
    PROMPT='%F{green}>%f '
fi

# #[[ "$(ps -o comm= -p $PPID)" == "alacritty" && -z "$DROPDOWN" ]] && fastfetch

# Claude/Codex local
alias cc="$HOME/.claude-codex-local/bin/cc"
alias claude-local="$HOME/.claude-codex-local/bin/cc"

# yazi
function y() {
    local tmp cwd
    tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd" || builtin true
    command rm -f -- "$tmp"
}

# Dotfiles bare repository
alias config='/usr/bin/git --git-dir="$HOME/.cfg/" --work-tree="$HOME"'
