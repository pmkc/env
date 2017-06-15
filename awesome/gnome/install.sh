#!/bin/bash

set -ex
(( UID == 0 ))
dpkg -l awesome gnome-session gnome-panel gnome-settings-daemon

DIR=$(dirname $0)
cp $DIR/awesome.desktop /usr/share/applications
cp $DIR/awesome-gnome.desktop /usr/share/xsessions
cp $DIR/awesome.session /usr/share/gnome-session/sessions
find /usr/share/applications/ -exec sed -i 's/OnlyShowIn.*GNOME;/&Awesome GNOME;/' {} \;
