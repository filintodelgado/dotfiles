set -x BROWSER  'firefox'

alias vim 'nvim'

set -x PAGER    'bat -p'
set -x MANPAGER "sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -l man --paging=always'"

# journalctl and systemctl output
set -x SYSTEMD_PAGER "bat -p -l syslog"
set -x SYSTEMD_COLORS false
set -x SYSTEMD_PAGERSECURE true

alias less 'bat -p'
alias cat 'bat'

function edit --description "Edit a file or on the current directory with the default \$EDITOR" -a file --wraps "$EDITOR"
    # Bring editor to foreground
    set job (jobs | grep "$EDITOR")

    if test -n "$job"
        set job_id (echo $job | cut -f1 )
        fg (jobs -p %"$job_id")
        return
    end

    # Open a new editor with the file or in the current dir
    if test -z "$file"
        set file .
    end
    $EDITOR $file
end

bind -M insert ctrl-e edit
