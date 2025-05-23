# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias lt='eza --icons=auto --tree' # list folder as tree

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Using 'exit' sometimes exits with a non-zero exit code
alias bye 'exit 0'

function bats -d "See the help page of a command with bat"
    $argv --help | less -l help
end

# Displays the image in the 'kitty' terminal
alias show 'kitty +kitten icat'

alias vtop 'vtop --theme certs --no-mouse'
