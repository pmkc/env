#!/bin/bash

set -ex
(( UID == 0 ))
dpkg -l awesome gnome-session gnome-panel gnome-settings-daemon

DIR=$(dirname $0)
cp $DIR/awesome.desktop /usr/share/applications
cp $DIR/gnome-awesome.desktop /usr/share/xsessions
cp $DIR/awesome.session /usr/share/gnome-session/sessions

