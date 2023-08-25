if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_user_paths "/usr/local/bin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/bin" $fish_user_paths
[ -f $HOMEBREW_PREFIX/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

starship init fish | source
