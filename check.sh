source config.sh

if [ ! "$(whoami)" == "$USER_DAEMON" ]
then
  echo "Daemon must be launch with $USER_DAEMON" && exit 1
fi

[ -w "${WORKSPACE}." ] || echo "Error cannot write to ${WORKSPACE}"
