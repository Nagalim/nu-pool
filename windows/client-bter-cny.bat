@echo off
SET users=pool-bter-cny.conf
if not exist pool-bter-cny.conf (
  if exist pool-bter-cny.conf.txt (
    SET users=pool-bter-cny.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-bter-cny.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\python\client.py %users%
