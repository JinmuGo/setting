#!/bin/bash

# HOME=~
GOINFRE="$HOME/goinfre"

TARGETS=(
	"Library/Caches/vscode-cpptools"
	"Library/Caches/com.tinyspeck.slackmacgap"
	"Library/Caches/com.tinyspeck.slackmacgap.ShipIt"
	"Library/Caches/com.hnc.Discord"
	"Library/Caches/com.hnc.Discord.ShipIt"
	"Library/Caches/Google"
	"Library/Caches/com.microsoft.VSCode"
	"Library/Caches/com.microsoft.VSCode.ShipIt"
	"Library/Caches/com.vscodium"
	"Library/Caches/com.vscodium.ShipIt"
	"Library/Caches/com.apple.helpd"
	"Library/Caches/com.googlecode.iterm2"
	"Library/Application Support/Slack/Cache"
	"Library/Application Support/Slack/Service Worker"
	"Library/Application Support/Code/Cache"
	"Library/Application Support/Code/Code Cache"
	"Library/Application Support/Code/CachedData"
	"Library/Application Support/Code/CachedExtensionVSIXs"
	"Library/Application Support/Code/CachedExtensions"
	"Library/Application Support/Code/User/workspaceStorage"
	"Library/Application Support/Code/Service Worker/CacheStorage"
	"Library/Application Support/Caches"
	"Library/Mobile Documents"
)

function link() {
	TARGET=$1
	SOURCE="$HOME/$TARGET"
	DESTINATION="$GOINFRE/$TARGET"
	echo "Process [$TARGET]"

	echo "Hello"
	mkdir -p "$DESTINATION"

	if [ -d "$SOURCE" ]
	then
		echo "Copy"
		cp -af "$SOURCE/" "$DESTINATION/"
	else
		echo "Empty"
	fi

	echo "Remove"
	rm -rf "$SOURCE"

	echo "Link!"
	ln -s "$DESTINATION" "$SOURCE"
}

# Main
for TARGET in "${TARGETS[@]}"
do
	link "$TARGET"
done
