#!/bin/bash
set -eu
##########
# Buy Scripting Template for Nefertiti Cryptotrader Bot
# Created by github.com/d00vy
#
# More information at: https://d00vy.com/blog/how_setup_nefertiti_cryptotrader_bot/
# Nefertiti Documentation: https://nefertiti-tradebot.com/
##########

## Define buy bot variables
EXCHANGE="BTRX" #Exchange you want to run
PRICE="XX" #Amount of base currency to spend per order
MARKET="USD-ETH" #Markets to trade (USD-ETH,USD-BTC)
API_KEY="XXX" #Exchange API Key
API_SECRET="XXX" #Exchange API Secret
API_PASS="XXX" #Exchange API Passphrase (remove if not required)
PUSHOVER_APP_KEY="NONE" #Pushover App Key
PUSHOVER_USER_KEY="NONE" #Pushover User Key
TELEGRAM_KEY="XXX" #Telegram Bot Token
TELEGRAM_ID="XXX" #Telegram channel ID
REPEAT=1 #Repeat interval (Default is 1 hour)
TOP=2 #Amount of orders to place per market

## Execute buy bots
echo "Loaded variables - Starting Buy Bot for $MARKET"
	cryptotrader buy \
	--exchange=$EXCHANGE \
	--market=$MARKET \
	--api-key=$API_KEY \
	--api-secret=$API_SECRET \
	--api-passphrase=$API_PASS \
	--telegram-app-key=$TELEGRAM_KEY \
	--telegram-chat-id=$TELEGRAM_ID \
	--pushover-app-key=$PUSHOVER_APP_KEY \
	--pushover-user-key=$PUSHOVER_USER_KEY \
	--price=$PRICE \
	--repeat=$REPEAT \
	--top=$TOP \
	--ignore=error

