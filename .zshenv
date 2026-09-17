# Environment

# Rust / Cargo
. "$HOME/.cargo/env"

# Local binaries
. "$HOME/.local/bin/env"

# Atuin
. "$HOME/.atuin/bin/env"

# General environment
export COLORTERM=truecolor
export UV_CACHE_DIR=/mnt/DATA/Programming/.cache/uv
export NVIM_APPNAME=lazyvim

# fnm
FNM_PATH="$HOME/.local/share/fnm"
if [[ -d "$FNM_PATH" ]]; then
    export PATH="$FNM_PATH:$PATH"
    eval "$(fnm env --shell zsh)"
fi

