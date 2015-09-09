@echo off
SET users=pool-ccedk-btc.conf
if not exist pool-ccedk-btc.conf (
  if exist pool-ccedk-btc.conf.txt (
    SET users=pool-ccedk-btc.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-ccedk-btc.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\..\python\client.py %users%
