#!/bin/bash

cleanup()
{
  boot2docker stop
  return $?
}

control_c()
{
  echo -en "\n*** Ouch! Exiting ***\n"
  cleanup
  exit $?
}
 
# trap keyboard interrupt (control-c)
trap control_c SIGINT

boot2docker up
ssh -p 2022 -i ~/.ssh/id_boot2docker docker@localhost sudo mkdir /znc

# main() loop
while true; do read x; done
