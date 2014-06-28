#!/bin/bash

cleanup()
{
  umount ./znc
  return $?
}

control_c()
{
  echo -en "\n*** Ouch! Exiting ***\n"
  cleanup
  exit $?
}

# trap keyboard interrupt (control-c)
if sshfs -p 2022 -o IdentityFile=~/.ssh/id_boot2docker docker@localhost:/znc ./znc
then
  trap control_c SIGINT
else
  echo "Unable to mount filesystem"
  exit 1
fi

# main() loop
while true; do read x; done
