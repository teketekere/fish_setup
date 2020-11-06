#! /bin/bash -e

# fish, etc...
apt-add-repository ppa:fish-shell/release-3
apt-get update -y
apt-get install -y fish nano curl locales

# Locale
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen

# fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
