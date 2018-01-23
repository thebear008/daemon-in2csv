WORKSPACE="/run/in2csv/"
BIN_IN2CSV="/bin/in2csv"
USER_DAEMON="www-data"

if [ ! -f "$BIN_IN2CSV" ]
then
  BIN_IN2CSV="/usr/bin/in2csv-3"
fi

grep $USER_DAEMON /etc/passwd > /dev/null 2>&1

if [ ! $? -eq 0 ]
then
  USER_DAEMON="apache"
fi
