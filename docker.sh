#!/bin/bash
sudo dnf install docker -y
sudo systemctl enable --now docker
sudo usermod -aG docker $(whoami)

cat <<EOT >> ~/.bashrc
source /etc/profile.d/bash_completion.sh
EOT

mkdir -p ~/.local/share/bash-completion/completions
docker completion bash > ~/.local/share/bash-completion/completions/docker

echo "Completed. Please run 'newgrp docker'"