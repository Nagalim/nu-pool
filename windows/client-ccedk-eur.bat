@echo off
SET users=pool-ccedk-eur.conf
if not exist pool-ccedk-eur.conf (
  if exist pool-ccedk-eur.conf.txt (
    SET users=pool-ccedk-eur.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-ccedk-eur.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\python\client.py %users%
