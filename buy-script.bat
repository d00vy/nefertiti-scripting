ECHO OFF
::::::::::::::::::::
:: Buy Bot Scripting Template for Nefertiti Cryptotrader Bot
:: Created by github.com/d00vy
::
:: More information at: https://d00vy.com/blog/how_setup_nefertiti_cryptotrader_bot/
:: Nefertiti Documentation: https://nefertiti-tradebot.com/
::::::::::::::::::::

:::: Define sell bot variables
:: Exchange you want to run
SET EXCHANGE=BTRX

:: Amount of base currency to spend per order
SET PRICE=XX

:: Markets to trade (USD-ETH,USD-BTC)
SET MARKET=USD-ETH

:: Exchange API Key
SET API_KEY=XXX 

:: Exchange API Secret
SET API_SECRET=XXX

:: Exchange API Passphrase (remove if not required)
SET API_PASS=XXX

:: Pushover App Key
SET PUSHOVER_APP_KEY=NONE

:: Pushover User Key
SET PUSHOVER_USER_KEY=NONE

:: Telegram Bot Token
SET TELEGRAM_KEY=XXX

:: Telegram channel ID
SET TELEGRAM_ID=XXX

:: Repeat interval (Default is 1 hour)
SET REPEAT=1


:::: Execute buy bots
echo Loaded variables - Starting Buy Bot for %MARKET%
	cryptotrader buy ^
	--exchange=%EXCHANGE% ^
	--market=%MARKET% ^
	--api-key=%API_KEY% ^
	--api-secret=%API_SECRET% ^
	--api-passphrase=%API_PASS% ^
	--telegram-app-key=%TELEGRAM_KEY% ^
	--telegram-chat-id=%TELEGRAM_ID% ^
	--pushover-app-key=%PUSHOVER_APP_KEY% ^
	--pushover-user-key=%PUSHOVER_USER_KEY% ^
	--price=%PRICE% ^
	--repeat=%REPEAT% ^
	--ignore-error