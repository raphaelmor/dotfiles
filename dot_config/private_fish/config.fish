if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings insert
    fish_vi_cursor
    set fish_cursor_insert line blink
    fzf --fish | source
    fish_add_path /Users/raphaelmor/Code/odin/
    fish_add_path /Users/raphaelmor/.cargo/bin/
    fish_add_path /Users/raphaelmor/bin/
    fish_add_path /opt/homebrew/bin/
    set -Ux BAT_THEME gruvbox-dark
    set -Ux EDITOR nvim
    #set -Ux FZF_DEFAULT_OPTS '--height 40% --color=fg:-1,fg+:#7c6f64,bg:-1,bg+:#d8a657 --color=hl:#7daea3,hl+:#1d2021,info:#d4be98,marker:#a9b665 --color=prompt:#a9b665,spinner:#d3869b,pointer:#1d2021,header:#7daea3 --color=gutter:#1d2021,border:#d8a657,label:#d4be98,query:#ddc7a1 --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="❯ " --marker="❯" --pointer="❯" --separator="─" --scrollbar="│" --layout="reverse" --info="right"'
    set -Ux FZF_DEFAULT_OPTS '--height 40% --color=fg:-1,fg+:#1d2021,bg:-1,bg+:#d8a657 --color=hl:#7daea3,hl+:#7c6f64,info:#d4be98,marker:#a9b665 --color=prompt:#a9b665,spinner:#d3869b,pointer:#667a02,header:#7daea3 --color=gutter:-1,border:#d8a657,label:#d4be98,query:#ddc7a1 --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="❯ " --pointer="❯" --layout="reverse" --info="right"'
    set -Ux FZF_CTRL_T_OPTS "--walker-skip .git,node_modules,target --preview 'fzf-preview.sh {}' --bind 'ctrl-/:change-preview-window(down|hidden|)'"
    set -Ux FZF_CTRL_R_OPTS "--bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort' --color header:italic --header 'Press CTRL-Y to copy command into clipboard'"
    set -Ux FZF_ALT_C_OPTS "--walker-skip .git,node_modules,target --preview 'eza --tree --icons=always --color=always {}'"
    alias ls='eza -G --icons=auto --group-directories-first'
    alias ll='eza -G --icons=auto --group-directories-first --long --git -h --extended'
    alias la='eza -G -a --icons=auto --group-directories-first --long --git -h --extended'
    alias cd='z'
    alias nvm='NVIM_APPNAME="nvim-kickstart" nvim'
    zoxide init fish | source
    abbr --add sspo sshtool ssh phone
    abbr --add sspa sshtool ssh pad
    abbr --add lu --command git -- release/23.A-Luckier
    abbr --add v nvim
    abbr --add ff --command git -- pull --ff-only
    abbr --add st --command git -- status
    abbr --add fix -- swe src fix -r
    abbr --add pr -- swe src pr
end
