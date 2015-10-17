#!/bin/bash

cwd=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) # <-- Do not edit this!
cwd=$cwd"/"
alp_bot_array=( liquidbits_ccedk_btc/pool-ccedk-btc liquidbits_ccedk_eur/pool-ccedk-eur liquidbits_ccedk_usd/pool-ccedk-usd nupond_bter_btc/pool-bter-btc nupond_bter_cny_fix_payout_test/pool-bter-cny-fix-payout-test nupond_bter_cny/pool-bter-cny nupool_bittrex_btc/pool-bittrex-btc nupool_poloniex_btc/pool-poloniex-btc nuriver_cryptsy_btc/pool-cryptsy-btc nuriver_cryptsy_usd/pool-cryptsy-usd )

for bot in "${alp_bot_array[@]}"
do
        echo $bot:
#	sed -i '42 a # Maximum NBT to place on sell side\nfillfactor = 10000\n' $bot
#	head -n 44 $bot | tail -n 2 && echo "---------------"
#	sed -i 's#reset_timer = 0.50#reset_timer = 0.5#' $bot
	grep reset_timer $bot
done
