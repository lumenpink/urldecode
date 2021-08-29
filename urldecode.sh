#!/bin/bash

VERSION=0.0.2

usage() {
  echo "urldecode [-hV]"
  echo
  echo "Options:"
  echo "  -h|--help      Print this help dialogue and exit"
  echo "  -V|--version   Print the current version and exit"
}

if [ -z "${1}" ]; then
  usage
else
  for opt in "${@}"; do
    case "$opt" in
    -h | --help)
      usage
      exit 0
      ;;
    -V | --version)
      echo "$VERSION"
      exit 0
      ;;
    esac
  done
fi

echo -e "${@//%/\\x}"
exit $?
