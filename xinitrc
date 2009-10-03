#!/bin/sh
export LC_MESSAGES="en_US.utf8"
xrdb -merge ~/.Xresources
xmodmap ~/.Xmodmap

if [ $FLUXBOXSESSION == "y" ] ; then
	exec ck-launch-session startfluxbox
else
	xbindkeys
	exec ck-launch-session i3 -l > ~/.i3/i3.log
fi

