function dot --description='User dotfiles management with git'
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME/ $argv
end

function sysdot --description='System wide dotfiles management with git'
    git --git-dir=$HOME/.dotfiles/ --work-tree=/ $argv
end

function metadot --description="Dotfiles documents and assets management with git"
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME/.config/meta/ $argv
end
