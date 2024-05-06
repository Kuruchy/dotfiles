#!/bin/sh

source "$CONFIG_DIR/icons.sh"

case "$1" in
"Terminal" | "Warp" | "iTerm2")
  RESULT=$ICON_TERM
	if grep -q "brew" <<< $2;
  then
	 RESULT=$ICON_PACKAGE
	fi
	if grep -q "vim" <<< $2;
  then
	 RESULT=$ICON_DEV
	fi
	if grep -q "git" <<< $2;
  then
	 RESULT=$ICON_GIT
	fi
	;;
"Finder")
	RESULT=$ICON_FINDER
	;;
"Weather")
	RESULT=$ICON_WEATHER
	;;
"Clock")
	RESULT=$ICON_CLOCK
	;;
"Mail" | "Microsoft Outlook")
	RESULT=$ICON_MAIL
	;;
"Calendar")
	RESULT=$ICON_CALENDAR
	;;
"Calculator")
	RESULT=$ICON_CALC
	;;
"Maps" | "Find My")
	RESULT=$ICON_MAP
	;;
"Slack")
	RESULT=$ICON_SLACK
	;;
"zoom.us")
	RESULT=$ICON_VIDEOCHAT
	;;
"Notes" | "TextEdit" | "Notion")
	RESULT=$ICON_NOTION
	;;
"Reminders")
	RESULT=$ICON_LIST
	;;
"Things")
	RESULT=$ICON_THINGS
	;;
"Photo Booth")
	RESULT=$ICON_CAMERA
	;;
"Safari" | "Beam" | "DuckDuckGo" | "Arc" | "Microsoft Edge")
	RESULT=$ICON_WEB
	;;
"Google Chrome")
	RESULT=$ICON_GOOGLE_CHROME
	if grep -q "Inbox" <<< $2;
  	then
	 RESULT=$ICON_GOOGLE_GMAIL
	fi
	if grep -q "JIRA" <<< $2;
  	then
	 RESULT=$ICON_JIRA
	fi
	if grep -q "Calendar - " <<< $2;
  	then
	 RESULT=$ICON_GOOGLE_CALENDAR
	fi
	if grep -q "tk-android" <<< $2;
  	then
	 RESULT=$ICON_GITHUB
	fi
		if grep -q "Pull" <<< $2;
  	then
	 RESULT=$ICON_GITHUB
	fi
	if grep -q "mobile-backend" <<< $2;
  	then
	 RESULT=$ICON_GITHUB
	fi
	;;
"Firefox")
	RESULT=$ICON_FIREFOX
	;;
"System Settings" | "System Information")
	RESULT=$ICON_COG
	;;
"HOME")
	RESULT=$ICON_HOMEAUTOMATION
	;;
"Music")
	RESULT=$ICON_MUSIC
	;;
"Spotify")
	RESULT=$ICON_SPOTIFY
	;;
"Podcasts")
	RESULT=$ICON_PODCAST
	;;
"QuickTime Player")
	RESULT=$ICON_PLAY
	;;
"Books")
	RESULT=$ICON_BOOK
	;;
"Xcode" | "Neovide")
	RESULT=$ICON_DEV
	;;
"Code")
	RESULT=$ICON_VS_CODE
	;;
"Android Studio")
	RESULT=$ICON_ANDROID_STUDIO
	;;
"Dictionary")
	RESULT=$ICON_BOOKINFO
	;;
"Font Book")
	RESULT=$ICON_FONTBOOK
	;;
"Activity Monitor")
	RESULT=$ICON_CHART
	;;
"Disk Utility")
	RESULT=$ICON_DISK
	;;
"Screenshot" | "Preview")
	RESULT=$ICON_PREVIEW
	;;
"Microsoft Excel" | "Numbers")
	RESULT=$ICON_TABLE
	;;
"Microsoft PowerPoint" | "Keynote" | "Google Slides")
	RESULT=$ICON_PRESENT
	;;
"Figma")
	RESULT=$ICON_FIGMA
	;;
*)
	RESULT=$ICON_APP
	;;
esac

echo $RESULT