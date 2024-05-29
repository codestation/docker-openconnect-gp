#!/bin/sh

set -eu

if [ -z "${VPN_ADDRESS}" ]; then
  echo "VPN_ADDRESS is not defined"
  exit 1
fi

if [ -z "${VPN_USER}" ]; then
  echo "VPN_USER is not defined"
  exit 1
fi

if [ -z "${VPN_PASSWORD}" ]; then
  echo "VPN_PASSWORD is not defined"
  exit 1
fi

if [ -z "${VPN_SERVERCERT}" ]; then
  echo "VPN_SERVERCERT is not defined"
  exit 1
fi

echo "${VPN_PASSWORD}" | openconnect --protocol=gp --servercert="${VPN_SERVERCERT}" --user="${VPN_USER}" --passwd-on-stdin --script=/vpnc.sh "${VPN_ADDRESS}"
