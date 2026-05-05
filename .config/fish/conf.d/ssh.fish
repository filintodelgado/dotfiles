if ! pgrep -u "$USER" ssh-agent > /dev/null
  ssh-agent -t 1h -c > "$XDG_RUNTIME_DIR/ssh-agent.env"
end

if ! test -f "$SSH_AUTH_SOCK"
  source "$XDG_RUNTIME_DIR/ssh-agent.env" &> /dev/null
  # add the default keys
  ssh-add &> /dev/null

  # add the custom keys
  for key in (find ~/.ssh/keys -type f | grep -v '^.*\.pub')
    ssh-add $key &> /dev/null
  end
end

