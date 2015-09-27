@echo off
SET users=pool-poloniex-btc.conf
if not exist pool-poloniex-btc.conf (
  if exist pool-poloniex-btc.conf.txt (
    SET users=pool-poloniex-btc.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-poloniex-btc.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\..\python\client.py %users%
