echo "killing"
ps -ef | grep "$1" | grep "^\s\+\d\+\s\+\d\+\s\+1\s\+"| grep -v "grep"
kill $(ps -ef | grep "$1" | grep "^\s\+\d\+\s\+\d\+\s\+1\s\+"| grep -v "grep" | awk '{print $2}')
