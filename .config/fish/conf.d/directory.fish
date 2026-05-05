# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

function new --description "Creates a new directory and sets it as the working directory" --argument-names directory_name
    # use the actual commands instead of the aliases and abbreviations
    command mkdir -p "$directory_name" && builtin cd "$directory_name"
end

