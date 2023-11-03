#!/bin/sh
export INSTALL_LINK='golang.org/x/vuln/cmd/govulncheck@latest'

export ANALYSIS_COMMAND='govulncheck ./...'

export TIMEFMT='command: %J || user time: %U || system time: %S || real time: %E || total cpu: %P || max memory %M kB'

git clone https://github.com/tsuru/tsuru.git
pwd
./timeconfig.sh

echo $INSTALL_LINK
go install $INSTALL_LINK
cd tsuru
zsh -c "time $ANALYSIS_COMMAND"
