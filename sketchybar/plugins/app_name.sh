#!/bin/sh

case "$1" in
"Google Chrome")
	RESULT="Chrome"
	if grep -q "Inbox" <<< $2;
  	then
	 RESULT="Gmail"
	fi
	if grep -q "JIRA" <<< $2;
  	then
	 RESULT="JIRA"
	fi
	if grep -q "Calendar" <<< $2;
  	then
	 RESULT="Calendar"
	fi
	if grep -q "tk-android" <<< $2;
  	then
	 RESULT="Github"
	fi
		if grep -q "Pull" <<< $2;
  	then
	 RESULT="Github"
	fi
	if grep -q "mobile-backend" <<< $2;
  	then
	 RESULT="Github"
	fi
	if grep -q "Notion" <<< $2;
  	then
	 RESULT="Notion"
	fi
	;;
"Terminal" | "Warp" | "iTerm2")
    RESULT="iTerm2"
	if grep -q "brew" <<< $2;
  then
	 RESULT="Brew"
	fi
	if grep -q "vim" <<< $2;
  then
	 RESULT="Vim"
	fi
	if grep -q "git" <<< $2;
  then
	 RESULT="Git"
	fi
	;;
*)
	RESULT=$1
	;;
esac

echo $RESULT