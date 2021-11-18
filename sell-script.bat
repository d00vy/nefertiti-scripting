ECHO OFF
::::::::::::::::::::
:: Sell Bot Scripting Template for Nefertiti Cryptotrader Bot
:: Created by github.com/d00vy
::
:: More information at: https://d00vy.com/blog/how_setup_nefertiti_cryptotrader_bot/
:: Nefertiti Documentation: https://nefertiti-tradebot.com/
::::::::::::::::::::

:::: Define sell bot variables
:: Exchange you want to run
SET EXCHANGE=KUCN

:: Exchange API Key
SET API_KEY=XXX

:: Exchange API Secret
SET API_SECRET=XXX

:: Exchange API Passphrase
SET API_PASS=XXX

:: Pushover App Key
SET PUSHOVER_APP_KEY=NONE

:: Pushover User Key
SET PUSHOVER_USER_KEY=NONE

:: Telegram Bot Token
SET TELEGRAM_KEY=XXX

:: Telegram channel ID
SET TELEGRAM_ID=XXX

:: Use stoploss strategy? [Y/N]
SET STOPLOSS=N

:: Notification verbosity [0|1|2*|3]
SET NOTIFY=2

:: Set sell price multiplier, default is 5% (1.05*)
SET MULT=1.05

:: Name of markets not to sell
::SET HOLD=BTC-USD,BTC-USDT

:: Name of markets not to keep profits in coin
::SET EARN=BTC-USD,BTC-USDT


:::: Execute sell bot
echo Loaded Variables - Starting Sell Bot on %EXCHANGE%
.\cryptotrader.exe sell ^
	--exchange=%EXCHANGE% ^
	--api-key=%API_KEY% ^
	--api-secret=%API_SECRET% ^
	--api-passphrase=%API_PASS% ^
	--telegram-app-key=%TELEGRAM_KEY% ^
	--telegram-chat-id=%TELEGRAM_ID% ^
	--pushover-app-key=%PUSHOVER_APP_KEY% ^
	--pushover-user-key=%PUSHOVER_USER_KEY% ^
	--stoploss=%STOPLOSS% ^
	--notify=%NOTIFY% ^
	--mult=%MULT% ^
	--ignore=error