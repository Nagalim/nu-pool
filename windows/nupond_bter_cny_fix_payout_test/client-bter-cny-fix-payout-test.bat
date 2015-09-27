@echo off
SET users=pool-bter-cny-fix-payout-test.conf
if not exist pool-bter-cny-fix-payout-test.conf (
  if exist pool-bter-cny-fix-payout-test.conf.txt (
    SET users=pool-bter-cny-fix-payout-test.conf.txt
  ) else (
    @echo on
    echo error: You must specify a file called pool-bter-cny-fix-payout-test.conf with your exchange data
    pause
    exit
  )
)
@echo on
..\..\python\client.py %users%
