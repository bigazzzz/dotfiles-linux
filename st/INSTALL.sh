#!/usr/bin/env bash

# Vanilla: git clone https://git.suckless.org/st /opt/st-vanilla

apt install git libx11-dev libxft-dev suckless-tools -y
git clone https://github.com/LukeSmithxyz/st /opt/st
cd /opt/st
make install
mv .Xdefaults .Xdefaults.bak

cat << EOT > .Xdefaults
!! Transparency (0-1):
st.alpha: 0.92

!! Set a default font and font size as below:
st.font: Monospace-11;

! st.termname: st-256color
! st.borderpx: 2

!! Set the background, foreground and cursor colors as below:
! *.background: #282828
! *.foreground: white
! *.cursorColor: white

! Custom
! Original theme https://github.com/sindresorhus/hyper-snazzy
*.foreground:     #eff0eb
*.background:     #282a36
*.cursorColor:    #97979b
*.highlightColor: #3A3A3A

! Negro y gris
*.color0:        #282a36
*.color8:        #686868
! Rojos
*.color1:        #ff5c57
*.color9:        #ff5c57
! Verde
*.color2:        #5af78e
*.color10:       #5af78e
! Amarillo
*.color3:        #f3f99d
*.color11:       #f3f99d
! Azul
*.color4:        #57c7ff
*.color12:       #57c7ff
! Magenta
*.color5:        #ff6ac1
*.color13:       #ff6ac1
! Cyan
*.color6:        #9aedfe
*.color14:       #9aedfe
! Blanco
*.color7:        #f1f1f0
*.color15:       #eff0eb
EOT

xrdb .Xdefaults

# update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/st 1
# update-alternatives --config x-terminal-emulator
# + create launcher (Panel)
# + change Ctrl-Alt-T behavior
