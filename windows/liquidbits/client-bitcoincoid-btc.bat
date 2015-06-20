@echo off
SET users=pool-bitcoincoid-btc.conf
if not exist pool-bitcoincoid-btc.conf (
  if exist pool-bitcoincoid.btc.conf.txt (
    SET users=pool-bitcoincoid-btc.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-bitcoincoid-btc.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\..\python\client.py %users%
