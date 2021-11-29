# remap prefix to Control + a
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# force a reload of the config file
bind-key r source-file ~/.tmux.conf \; display-message "tmux.conf reloaded."

set-option -g update-environment "SSH_ASKPASS SSH_AUTH_SOCK SSH_AGENT_PID SSH_CONNECTION DISPLAY"

# Set history to something usable
set-option -g history-limit 20000

# set window and pane index to 1 (0 by default)
set-option -g base-index 1
setw -g pane-base-index 1

# Sync panes
bind C-s set-window-option synchronize-panes

# Mouse support ----------------------------------------------------------
set -g mouse on

# Easy-to-remember split pane commands
bind '\' split-window -h -c '#{pane_current_path}' # vertical pane
bind - split-window -v -c '#{pane_current_path}' # horizontal pane
unbind '"'
unbind %

# Task manager
set -g @tasks_manager 'taskwarrior'

# Colors
set -g @tasks_format_begin '#[fg=white,bg=colour236]'
set -g @tasks_format_end '#[fg=white,bg=colour236]'

# Icons
set -g @tasks_icon_urgent '⧗ '
set -g @tasks_icon_outstanding '+ '

# Status bar -------------------------------------------------------------

# Plugins ----------------------------------------------------------------
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'soyuka/tmux-current-pane-hostname'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-open'
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
set -g @plugin 'ChanderG/tmux-notify'

# Plugin Options ---------------------------------------------------------
# Weather
set-option -g @tmux-weather-interval 15
set-option -g @tmux-weather-location "80525"
set-option -g @tmux-weather-format "%c+%t"
set-option -g @tmux-weather-units "u"

# Theme options
set -g @tmux_power_date_format '%m/%d'
set -g @tmux_power_time_format '%l:%M'

# Theme Options ----------------------------------------------------------
run '~/.tmux/plugins/tender.tmux'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
