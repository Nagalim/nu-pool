#!/bin/bash

cwd=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) # <-- Do not edit this!
cwd=$cwd"/"
alp_bot_array=( liquidbits_ccedk_btc/client-ccedk-btc liquidbits_ccedk_eur/client-ccedk-eur liquidbits_ccedk_usd/client-ccedk-usd nupond_bter_cny_fix_payout_test/client-bter-cny-fix-payout-test nupool_bittrex_btc/client-bittrex-btc nupool_poloniex_btc/client-poloniex-btc nuriver_cryptsy_btc/client-cryptsy-btc nuriver_cryptsy_usd/client-cryptsy-usd )

for bot in "${alp_bot_array[@]}"
do
# add fillfactor
#	sed -i '26 a \  \-m|--fillfactor) echo "fillfactor=$2";shift;;' $bot

# adjust options
#	sed -i '5 a options=`getopt -o x:a:k:s:i:ou:e:d:f:r:m:t: --long server:,address:,key:,secret:,interest:,ordermatch,unit:,exchange:,deviation:,offset:,restart_timer:,fillfactor:,trading: -- "$@"`' $bot
#	sed -i '7d' $bot
	head -n 6 $bot | tail -n 1

done
