@echo off
SET users=pool-cryptsy-usd.conf
if not exist pool-cryptsy-usd.conf (
  if exist pool-cryptsy-usd.conf.txt (
    SET users=pool-cryptsy-usd.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-cryptsy-usd.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\..\python\client.py %users%
