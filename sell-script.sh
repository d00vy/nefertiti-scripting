#!/bin/bash
set -eu
##########
# Buy Scripting Template for Nefertiti Cryptotrader Bot
# Created by github.com/d00vy
#
# More information at: https://d00vy.com/blog/how_setup_nefertiti_cryptotrader_bot/
# Nefertiti Documentation: https://nefertiti-tradebot.com/
##########

## Define variables
EXCHANGE="BTRX" #Exchange you want to run
API_KEY="XXX" #Exchange API Key
API_SECRET="XXX" #Exchange API Secret
API_PASS="XXX" #Exchange API Passphrase
PUSHOVER_APP_KEY="XXX" #Pushover App Key
PUSHOVER_USER_KEY="XXX" #Pushover User Key
TELEGRAM_KEY="XXX" #Telegram Bot Token
TELEGRAM_ID="XXX" #Telegram channel ID

## Execute sell bot
echo "Loaded Variables - Starting Sell Bot on $EXCHANGE"
cryptotrader sell \
	--exchange=$EXCHANGE \
	--api-key=$API_KEY \
	--api-secret=$API_SECRET \
	--api-passphrase=$API_PASS \
	--telegram-app-key=$TELEGRAM_KEY \
	--telegram-chat-id=$TELEGRAM_ID \
	--pushover-app-key=$PUSHOVER_APP_KEY \
	--pushover-user-key=$PUSHOVER_USER_KEY \
	--debug --ignore-error
