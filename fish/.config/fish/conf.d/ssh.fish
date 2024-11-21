# open connection to the ssh agent
eval (ssh-agent -c) > /dev/null

# add the default keys
ssh-add &> /dev/null

# add the custom keys
for key in (find ~/.ssh/keys -type f | grep -v '^.*\.pub')
  ssh-add $key &> /dev/null
end
