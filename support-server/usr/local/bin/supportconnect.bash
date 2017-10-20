#!/bin/bash

TIMEOUT=3h
TIMEOUT_TEXT="3 hours"

clear
printf "




*************************************************************************

	The Support Tunnel is open

	To close the tunnel, close the window

	The tunnel will automatically close in ${TIMEOUT_TEXT}

*************************************************************************




"
exec sleep ${TIMEOUT}

