##########################################################################################
#
#!/bin/bash
# version 0.20 - initial version
#
# version 0.45 - added nupond_bter_cny_fix_payout_test
#
# version 0.50 - prepared southxchange ("southx") bots
#
##########################################################################################

##########################################################################################
#
# This is another nasty script without much error detection and recovery
# For instance it doesn't work if you have multiple screen sessions with the same name.
#
# !!! It only works if each of the ALP screen sessions (started by alp-bot-screens.sh) !!!
# !!! has only been started once !!!
#
# If you get annoyed by the output of "CAN'T FIND [alp bot name]", put a "#"
# in front of the line 'echo "CAN'T FIND" $bot'
#
##########################################################################################


alp_bot_array=( liquidbits_ccedk_btc liquidbits_ccedk_eur liquidbits_ccedk_usd nupond_bter_btc nupond_bter_cny nupond_bter_cny_fix_payout_test nupool_bittrex_btc nupool_poloniex_btc nuriver_cryptsy_btc nuriver_cryptsy_usd southx_btc )
n=1

for bot in "${alp_bot_array[@]}"
do
	screen_pid_name=$(screen -ls | grep $bot | awk '{print $1}' )
	((n++))
	if [ "$screen_pid_name" == "" ]; then
		echo "CAN'T FIND" $bot
	else
		echo "trying to terminate "$screen_pid_name && screen -S $screen_pid_name -X stuff "^C"
	fi
done
