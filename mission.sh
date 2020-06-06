#!/usr/bin/env bash

_mission_count=1
_phase_count=1
_script_color='\033[0;34m'
_mission_color='\033[0;35m'
_phase_color='\033[0;36m'
_end_color='\033[0m'

function mission {
  [[ $_mission_count == 1 ]] && echo -e "${_script_color}$0${_end_color}\n" || echo
  echo -e "${_mission_color}[mission $_mission_count] $1${_end_color}"
  let "_mission_count=_mission_count+1"
  let "_phase_count=1"
}

function phase {
  echo -e "${_phase_color}[phase $_phase_count] $@${_end_color}"
  let "_phase_count=_phase_count+1"
  "$@" || exit 1
}
