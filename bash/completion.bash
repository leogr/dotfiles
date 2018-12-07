# Completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

# kubectl autocomplete
if [ -f /usr/local/bin/kubectl ]; then
    source <(kubectl completion bash)
fi

# kompose autocomplete 
if [ -f ~/go/bin/kompose ]; then
    source <(kompose completion bash)
fi