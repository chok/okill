#!/bin/bash

CMD='ps ax'
HUMAN_CMD='ps aux'

SIGNAL=-9

help() {
  echo "Usage: okill {list|kill} process"
}

list() {
  if [ !  "$#" -eq 1 ]
  then
    help
    exit 1
  fi

  echo "`${HUMAN_CMD}`" | sed -e 's/^.*\?okill.*\?$//' | sed -e "s/^.*\?grep --color $1//" | grep --color "$1"
  NB_PROCESS=$(echo "`${HUMAN_CMD}`" | sed -e 's/^.*\?okill.*\?$//' | sed -e "s/^.*\?grep --color $1//" | grep --color "$1" | wc -l)
  echo "${NB_PROCESS} processus"
}

okill() {
  if [ !  "$#" -eq 1 ]
  then
    help
    exit 1
  fi

  PIDS=$(echo "`${CMD}`" | sed -e 's/^.*\?okill.*\?$//' | sed -e "s/^.*\?grep $1//" | grep $1 | sed 's/^[^0-9]*\?\([0-9]\+\).*$/\1/g')
  NB_PROCESS=$(echo $PIDS | wc -w)

  for i in ${PIDS[*]}
  do
    kill ${SIGNAL} ${i}
  done
  echo "${NB_PROCESS} processus tués"
}



case "$1" in
  list)
        list $2
        ;;
  kill)
        okill $2
        ;;
  *)
        help
        exit 1
        ;;
esac

exit 0

