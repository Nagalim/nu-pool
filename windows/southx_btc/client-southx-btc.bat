@echo off
SET users=pool-southx-btc.conf
if not exist pool-southx-btc.conf (
  if exist pool-southx-btc.conf.txt (
    SET users=pool-southx-btc.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-southx-btc.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\..\python\client.py %users%
