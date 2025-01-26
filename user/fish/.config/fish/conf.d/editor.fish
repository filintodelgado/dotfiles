set -x BROWSER  'firefox'

set -x EDITOR   'lvim'
alias vim 'lvim'

set -x PAGER    'bat -p'
set -x MANPAGER "sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -l man --paging=always'"

# journalctl and systemctl output
set -x SYSTEMD_PAGER "bat -p -l syslog"
set -x SYSTEMD_COLORS false
set -x SYSTEMD_PAGERSECURE true

alias less 'bat -p'
alias cat 'bat'
