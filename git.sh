function gitpush {
	git add -A;
	COMMENT=""

	if [ "$#" -eq 1 ]
	then
		COMMENT="- $1"
	fi

	if [ "$#" -gt 1 ]
	then
		echo "Input 0 or 1 parameters"
		return 1 2>/dev/null
	fi

	git commit -m "$(date "+%T - %y %m %d") $COMMENT";
	git push -u origin master;
}

function gitpull {
	git reset --hard origin/master;
	git pull origin master;
}