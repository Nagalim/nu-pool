#!/bin/bash

cwd=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) # <-- Do not edit this!
cwd=$cwd"/"
logs="/logs/*"
alp_bot_array=( liquidbits_ccedk_btc liquidbits_ccedk_eur liquidbits_ccedk_usd nupond_bter_btc nupond_bter_cny nupool_bittrex_btc nupool_poloniex_btc nuriver_cryptsy_btc nuriver_cryptsy_usd )

for bot in "${alp_bot_array[@]}"
do
	logpath=$cwd$bot$logs
	echo "ALP report for $bot"

	bot_efficiency=$(grep "efficiency" $logpath | wc -l)

	bot_efficiency_not_100=$(grep "efficiency" $logpath | grep -v "efficiency: 100.00" | wc -l)

	overall_failure_rate=$(bc <<< "scale=4; $bot_efficiency_not_100/$bot_efficiency")
	overall_success_rate=$(bc <<< "scale=4; 1-$overall_failure_rate")

	overall_efficiency_percent=$(bc <<< "scale=2; $overall_failure_rate*100")
	overall_success_rate_percent=$(bc <<< "scale=2; $overall_success_rate*100")

	echo "Overall bot failure rate: "$overall_efficiency_percent "%"
	echo "Bot at 100.00% efficiency:" $overall_success_rate_percent "%" && echo
done
