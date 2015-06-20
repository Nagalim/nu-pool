@echo off
SET users=pool-bittrex-btc.conf
if not exist pool-bittrex-btc.conf (
  if exist pool-bittrex-btc.conf.txt (
    SET users=pool-bittrex-btc.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-bter-btc.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\..\python\client.py %users%
