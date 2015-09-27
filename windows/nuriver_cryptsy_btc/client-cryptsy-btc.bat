@echo off
SET users=pool-cryptsy-btc.conf
if not exist pool-cryptsy-btc.conf (
  if exist pool-cryptsy-btc.conf.txt (
    SET users=pool-cryptsy-btc.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-cryptsy-btc.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\..\python\client.py %users%
