sudo apt install -y ranger caca-utils highlight atool w3m poppler-utils mediainfo
ranger
q
ranger --copy-config=all
ln -sv ${HOME}/.dotfiles/ranger/rc.conf ${HOME}/.config/ranger/rc.conf
