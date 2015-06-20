@echo off
SET users=pool-ccedk-usd.conf
if not exist pool-ccedk-usd.conf (
  if exist pool-ccedk-usd.conf.txt (
    SET users=pool-ccedk-usd.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-ccedk-usd.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\..\python\client.py %users%
