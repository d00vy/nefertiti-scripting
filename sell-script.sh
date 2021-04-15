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
PUSHOVER_APP_KEY="NONE" #Pushover App Key
PUSHOVER_USER_KEY="NONE" #Pushover User Key
TELEGRAM_KEY="XXX" #Telegram Bot Token
TELEGRAM_ID="XXX" #Telegram channel ID
STRATEGY="0" #Selling strategy to use [0*|1|2|3|4]
NOTIFY="2" #Notification verbosity [0|1|2*|3]
MULT="1.05" #Set sell price multiplier, default is 5% (1.05*)
#HOLD=BTC-USD,BTC-USDT #Name of markets not to sell

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
	--strategy=$STRATEGY \
	--notify=$NOTIFY \
	--mult=$MULT \
	--ignore-error
