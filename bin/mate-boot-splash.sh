#!/bin/bash

# Execute boot splash via symlink

SPLASH_LINK_PATH=/var/cache/kano-desktop/boot_splash.link

SPLASH_PATH_DEFAULT=/usr/share/kano-desktop/animations/bootup/kano_bootup_static.png

# read link, and detect failure
SPLASH_PATH=""
SPLASH_PATH=$(readlink $SPLASH_LINK_PATH)


if [ "$SPLASH_PATH" = "" ] ; then
    SPLASH_PATH=$SPLASH_PATH_DEFAULT
fi

/usr/bin/kano-start-splash -t 30 $SPLASH_PATH
