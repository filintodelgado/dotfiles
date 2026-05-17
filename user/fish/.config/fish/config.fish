set -g fish_greeting

if status is-interactive
    fzf --fish | source
    mise activate fish | source
else
    mise activate fish --shims | source
end

function add_new_line_after_command --on-event fish_postexec
    if ! test "$argv" = "clear"
        echo
    end
end
