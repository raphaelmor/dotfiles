if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings insert
    fish_vi_cursor
    set fish_cursor_insert line blink
    fzf --fish | source
    fish_add_path /Users/raphaelmor/Code/odin/
    fish_add_path /Users/raphaelmor/bin/
    fish_add_path /opt/homebrew/bin/
    set -Ux BAT_THEME gruvbox-dark
    set -Ux EDITOR nvim
    alias ls='eza -G --icons=auto --group-directories-first'
    alias ll='eza -G --icons=auto --group-directories-first --long --git -h --extended'
    alias la='eza -G -a --icons=auto --group-directories-first --long --git -h --extended'
    alias cd='z'
    zoxide init fish | source
end
