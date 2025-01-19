set -x EDITOR   'lvim'
set -x MANPAGER "sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
set -x PAGER    'bat -p'

alias less 'bat -p'
alias cat 'bat'
