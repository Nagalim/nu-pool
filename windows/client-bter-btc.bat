@echo off
SET users=pool-bter-btc.conf
if not exist pool-bter-btc.conf (
  if exist pool-bter-btc.conf.txt (
    SET users=pool-bter-btc.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-bter-btc.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\python\client.py %users%
