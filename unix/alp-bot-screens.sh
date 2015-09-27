##########################################################################################
#
#!/bin/bash
# version 0.20
# version 0.30 - changed names
#       from    [pool]-[exchange]-[pair]
#       to      [pool]_[exchange]_[pair]
#
# version 0.40 - moved script to unix directory
#       and adjusted paths accordingly
#
##########################################################################################

cwd=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) # <-- Do not edit this!

##########################################################################################
#
# This is a nastily scripted, but hopefully helpful tool
# to run multiple ALP bots on a single machine.
# It was created on a RaspberryPi with Raspbian (by https://discuss.nubits.com/users/masterofdisaster/)
# It may run on different unix/linux machines, but the author won't guarantee anything :)
# ...not even the proper function on a Raspbian!
# It is designed to stay in the top folder of the ALP bot collection
#
# 'screen' is required to run this script. It's a
# terminal multiplexer with VT100/ANSI terminal emulation
# on Debian based systems you can install screen with
# 'sudo apt-get install screen'
#
# Don't forget to enter NBT address, API key and API secret in the
# 'unix/[poolname]/pool-[exchange]-[pair]' config file
#
#
# Following are the paths to the different ALP bots
# Uncomment each line which refers to an ALP bot you intend to use: remove "#" to activate
#
##########################################################################################

#liquidbits_ccedk_btc=$cwd/liquidbits_ccedk_btc
#liquidbits_ccedk_eur=$cwd/liquidbits_ccedk_eur
#liquidbits_ccedk_usd=$cwd/liquidbits_ccedk_usd
#nupond_bter_btc=$cwd/nupond_bter_btc
#nupond_bter_cny=$cwd/nupond_bter_cny
#nupond_bter_cny=$cwd/nupond_bter_cny_fix_payout_test
#nupool_bittrex_btc=$cwd/nupool_bittrex_btc
#nupool_poloniex_btc=$cwd/nupool_poloniex_btc
#nuriver_cryptsy_btc=$cwd/nuriver_cryptsy_btc
#nuriver_cryptsy_usd=$cwd/nuriver_cryptsy_usd


# The next section deals with starting screen sesssions and running ALP bots within
#
# screen sessions can be
# 	listed with 'screen -ls'
# 	attached to with 'screen -r [name or process ID]'
# 	detached (when being connected) with 'CTRL+a,CTRL+d'
#
# 'man screen' helps if you get lost with 'screen' ;)
#
# In case a bot needs to be stopped (attach to screen, and terminate bot)
# the screen session dies with the bot.
#
# This is not very convenient, but due to the automatic start of the bots with
# creating the screen unavoidable. Future versions of this script might fix this.
# As the pool config of the bots has a bot recycle configured, terminating the bots manually
# should only rarely be necessary (before shutting down the machine that runs the bot).
#
# If it is more often necessary, './client-[exchange]-[pair]' can be removed from the lines below.
# To start the ALP bots each screen session needs to be attached to and the bot can to be started
# with './client*' manually
#
########## REMARK #######
#
# THE ORDERS PLACED BY THE BOTS REMAIN UNTIL THEY ARE REMOVED - EITHER
# MANUALLY ON THE EXCHANGE WEBSITE OR BY GRACEFULLY TERMINATING THE ALP BOT
# FROM WITHIN THE SCREEN SESSION.
# KILLING A SCREEN SESSION OR SHUTTING DOWN THE DEVICE THAT RUNS THE BOTS
# DOES NOT DELETE ORDERS FROM EXCHANGES!
#
#########################
#

cd $liquidbits_ccedk_btc
screen -dmS liquidbits_ccedk_btc ./client-ccedk-btc
cd $liquidbits_ccedk_eur
screen -dmS liquidbits_ccedk_eur ./client-ccedk-eur
cd $liquidbits_ccedk_usd
screen -dmS liquidbits_ccedk_usd ./client-ccedk-usd
cd $nupond_bter_btc
screen -dmS nupond_bter_btc ./client-bter-btc
cd $nupond_bter_cny
screen -dmS nupond_bter_cny ./client-bter-cny
cd $nupond_bter_cny_fix_payout_test
screen -dmS nupond_bter_cny_fix_payout_test ./client-bter-cny-fix-payout-test
cd $nupool_bittrex_btc
screen -dmS nupool_bittrex_btc  ./client-bittrex-btc
cd $nupool_poloniex_btc
screen -dmS nupool_poloniex_btc ./client-poloniex-btc
cd $nuriver_cryptsy_btc
screen -dmS nuriver_cryptsy_btc ./client-cryptsy-btc
cd $nuriver_cryptsy_usd
screen -dmS nuriver_cryptsy_usd ./client-cryptsy-usd

sleep 2
screen -ls
