#!/bin/bash
echo "This script only links the themes, you need to apply it using something else such as lxappearance"
echo "Submodules has to be intialized first initialize using 'git submodule update --init'"

set -eu

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
gruvbox_plus_icon_pack=$SCRIPT_DIR/gruvbox-plus-icon-pack
gruvbox_gtk_theme=$SCRIPT_DIR/Gruvbox-GTK-Theme

if [ ! -e $HOME/.local/share/icons/Gruvbox-Plus-Dark ]; then
	mkdir -p $HOME/.local/share/icons

	ln -s $gruvbox_plus_icon_pack/Gruvbox-Plus-Dark $HOME/.local/share/icons/Gruvbox-Plus-Dark
	$gruvbox_plus_icon_pack/scripts/folders-color-chooser -c pistachio

	echo "Linked icon pack..."
fi

$gruvbox_gtk_theme/themes/install.sh
echo "Linked Gruvbox GTK Theme"
