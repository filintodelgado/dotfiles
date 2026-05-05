function what -d "Displays the help page of a command with a pager and syntax highlight"
    if test (count $argv) -eq 0
        less -l help
        return
    end

    if test "$argv[1]" = help -o "$argv[1]" = --help
        echo "Usage: what <command> [args...]" | less -l help
        return 0
    end

    if ! type "$argv[1]" &> /dev/null
        echo "Command \"$argv[1]\" doesn't exist" >&2
        return 1
    end

    if ! $argv --help &| less -l help 2> /dev/null
        echo "No help page available for command \"$argv[1]\""
        return 1
    end

    return 0
end

complete -c what -a '(__fish_complete_subcommand)'
