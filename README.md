# Dotfiles

Minimal Linux setup for a keyboard-driven workflow.

**OS:** CachyOS

**WM:** Niri

**Terminal:** Alacritty

**Shell:** Zsh

**Multiplexer:** Tmux

**Editor:** Neovim + LazyVim

**Prompt:** Starship

**File Manager:** Yazi

**History:** Atuin

**Node:** fnm

**Python:** uv

Managed with a Git bare repository.

```bash
config status
config add ~/.zshrc
config commit -m "update"
config push
```

The bare repository setup is based on the [Atlassian dotfiles guide](https://www.atlassian.com/git/tutorials/dotfiles). The `config` command/alias is generated from the approach described there.
