
#!/bin/bash
cwd=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) # <-- Do not edit this!

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
# Uncomment each line which refers to an ALP bot you intend to use

#liquidbitsCcedkBtc=$cwd/unix/liquidbits-ccedk-btc
#liquidbitsCcedkEur=$cwd/unix/liquidbits-ccedk-eur
#liquidbitsCcedkUsd=$cwd/unix/liquidbits-ccedk-usd
#nupondBterBtc=$cwd/unix/nupond-bter-btc
#nupondBterCny=$cwd/unix/nupond-bter-cny
#nupoolBittrexBtc=$cwd/unix/nupool-bittrex-btc
#nupoolPoloniexBtc=$cwd/unix/nupool-poloniex-btc
#nuriverCryptsyBtc=$cwd/unix/nuriver-cryptsy-btc
#nuriverCryptsyUsd=$cwd/unix/nuriver-cryptsy-usd


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

cd $liquidbitsCcedkBtc
screen -dmS liquidbits-ccedk-btc ./client-ccedk-btc
cd $liquidbitsCcedkEur
screen -dmS liquidbits-ccedk-eur ./client-ccedk-eur
cd $liquidbitsCcedkUsd
screen -dmS liquidbits-ccedk-usd ./client-ccedk-usd
cd $nupondBterBtc
screen -dmS nupond-bter-btc ./client-bter-btc
cd $nupondBterCny
screen -dmS nupond-bter-cny ./client-bter-cny
cd $nupoolBittrexBtc
screen -dmS nupool-bittrex-btc  ./client-bittrex-btc
cd $nupoolPoloniexBtc
screen -dmS nupool-poloniex-btc ./client-poloniex-btc
cd $nuriverCryptsyBtc
screen -dmS nuriver-cryptsy-btc ./client-cryptsy-btc
cd $nuriverCryptsyUsd
screen -dmS nuriver-cryptsy-usd ./client-cryptsy-usd
sleep 2
screen -ls
