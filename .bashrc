# ~/.bashrc - Common Activity Aliases

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# --- Prompt Customization ---
PS1='\u@\h:\w\$ '  # username@hostname:current_path$

# --- File Management Aliases ---
alias ll='ls -alF'      # Long list with file types
alias la='ls -A'        # List all except . and ..
alias l='ls -CF'        # Compact file view
alias ..='cd ..'        # Navigate up one directory
alias ...='cd ../..'    # Navigate up two directories
alias mkdir='mkdir -p'  # Create directories recursively
alias rm='rm -i'        # Prompt before delete
alias cp='cp -i'        # Prompt before overwrite
alias mv='mv -i'        # Prompt before move

# --- System Monitoring ---
alias df='df -h'        # Human-readable disk usage
alias du='du -h --max-depth=1'  # Human-readable dir size
alias free='free -h'    # Human-readable memory usage
alias top='htop'        # Use htop if available
alias psg='ps aux | grep'  # Search processes

# --- Network Diagnostics ---
alias ping='ping -c 5'  # Limit ping to 5 packets
alias ports='netstat -tuln'  # Show open ports
alias myip='curl ifconfig.me'  # Get public IP address
alias wget='wget -c'    # Resume partial downloads

# --- Git Shortcuts ---
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

# --- Package Management ---
alias update='sudo apt update && sudo apt upgrade -y'  # Ubuntu/Debian
alias pacman_update='sudo pacman -Syu'  # Arch-based systems
alias brewup='brew update && brew upgrade'  # macOS with Homebrew

# --- Navigation Helpers ---
alias h='history'
alias c='clear'

# --- Custom Shortcuts ---
alias e='nano'  # Use nano as a quick text editor
alias o='xdg-open .'  # Open the current folder in file explorer
alias t='tmux attach || tmux'  # Attach to tmux session or start new one

# --- Safety Net ---
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'

# --- Fun Aliases ---
alias shrug='echo "¯\_(ツ)_/¯"'
alias coffee='echo "Time for a coffee break ☕"'

# --- Load Changes ---
alias reload='source ~/.bashrc'  # Reload .bashrc

# --- Export PATH (Add custom bin folder) ---
export PATH="$HOME/bin:$PATH"

# Enable color support for `ls` and more
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
