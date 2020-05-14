#!/bin/sh

# See http://download.bareos.org/bareos/release/
# for applicable releases and distributions

#DIST=Debian_10
# or
# DIST=Debian_9.0
 DIST=xUbuntu_18.04
# DIST=xUbuntu_16.04

RELEASE=release/19.2
# or
# RELEASE=release/latest
# RELEASE=experimental/nightly

URL=http://download.bareos.org/bareos/$RELEASE/$DIST

# add the Bareos repository
printf "deb $URL /\n" > /etc/apt/sources.list.d/bareos.list

# add package key
wget -q $URL/Release.key -O- | apt-key add -

# install Bareos packages
apt-get update
apt-get install bareos bareos-database-postgresql
