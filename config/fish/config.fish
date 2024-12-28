if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_user_paths "/usr/local/bin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/bin" $fish_user_paths
[ -f $HOMEBREW_PREFIX/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

starship init fish | source

alias ls='eza -la'; funcsave ls


set -gx PATH $HOMEBREW_PREFIX/lib/ruby/gems/3.3.0/bin $PATH

# pnpm
set -gx PNPM_HOME "/Users/applesucks/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

alias c "code -n"

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/applesucks/.cache/lm-studio/bin
set -gx XDG_CONFIG_HOME "$HOME/.config"
