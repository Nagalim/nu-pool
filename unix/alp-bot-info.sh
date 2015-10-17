##########################################################################################
#
#!/bin/bash
# version 0.30 - changed names
#	from	[pool]-[exchange]-[pair]
#	to	[pool]_[exchange]_[pair]
#
# version 0.40 - moved script to unix directory
#	and adjusted paths accordingly
#
# version 0.41 - changed name to make auto completion in bash more convenient
#
# version 0.42 - changed output to improve the readability
#
# version 0.45 - added nupond_bter_cny_fix_payout_test
#
# version 0.50 - prepared southxchange ("southx") bots
#
##########################################################################################

cwd=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

##########################################################################################

# This is another nastily scripted, but hopefully helpful tool
# to quickly check the status of multiple ALP bots.
#
# The first line of output print the current date and time
# This is useful to verify the last messages in the logs that will be
# listed right after
#
# The standard output per ALP bot is
#	### pool name ###
# 	full path to most recent log - makes digging in this particular log easy
#	second last line of the log
#	last line of the log 
#
# If that output is not after your fancy, just edit it.
# It was just a try. I ended up with this type of check, because I find it convenient :)
#
##########################################################################################


# Some variables - additional ALP bots might be appended following the same style

pool01name="liquidbits_ccedk_btc"
pool01logdir=$cwd/$pool01name/logs/
if [ -d "$pool01logdir" ]; then
        pool01log=`ls -t $pool01logdir | head -n 1`
fi

pool02name="liquidbits_ccedk_eur"
pool02logdir=$cwd/$pool02name/logs/
if [ -d "$pool02logdir" ]; then
        pool02log=`ls -t $pool02logdir | head -n 1`
fi

pool03name="liquidbits_ccedk_usd"
pool03logdir=$cwd/$pool03name/logs/
if [ -d "$pool03logdir" ]; then
        pool03log=`ls -t $pool03logdir | head -n 1`
fi

pool04name="nupond_bter_btc"
pool04logdir=$cwd/$pool04name/logs/
if [ -d "$pool04logdir" ]; then
        pool04log=`ls -t $pool04logdir | head -n 1`
fi

pool05name="nupond_bter_cny"
pool05logdir=$cwd/$pool05name/logs/
if [ -d "$pool05logdir" ]; then
        pool05log=`ls -t $pool05logdir | head -n 1`
fi

pool06name="nupool_bittrex_btc"
pool06logdir=$cwd/$pool06name/logs/
if [ -d "$pool06logdir" ]; then
        pool06log=`ls -t $pool06logdir | head -n 1`
fi

pool07name="nupool_poloniex_btc"
pool07logdir=$cwd/$pool07name/logs/
if [ -d "$pool07logdir" ]; then
        pool07log=`ls -t $pool07logdir | head -n 1`
fi

pool08name="nuriver_cryptsy_btc"
pool08logdir=$cwd/$pool08name/logs/
if [ -d "$pool08logdir" ]; then
        pool08log=`ls -t $pool08logdir | head -n 1`
fi

pool09name="nuriver_cryptsy_usd"
pool09logdir=$cwd/$pool09name/logs/
if [ -d "$pool09logdir" ]; then
        pool09log=`ls -t $pool09logdir | head -n 1`
fi

pool10name="nupond_bter_cny_fix_payout_test"
pool10logdir=$cwd/$pool10name/logs/
if [ -d "$pool10logdir" ]; then
        pool10log=`ls -t $pool10logdir | head -n 1`
fi

pool11name="liquidbits_southx_btc"
pool11logdir=$cwd/$pool11name/logs/
if [ -d "$pool11logdir" ]; then
        pool11log=`ls -t $pool11logdir | head -n 1`
fi

#
# And here starts the part with the outputs
# Just uncomment each ALP bot you want to have in the overview
#

date
#echo "### $pool01name ###"
#echo $pool01logdir$pool01log
#tail -n 10 $pool01logdir$pool01log | sort -r | grep balance | head -n 1 && echo

#echo "### $pool02name ###"
#echo $pool02logdir$pool02log
#tail -n 10 $pool02logdir$pool02log | sort -r | grep balance | head -n 1 && echo

#echo "### $pool03name ###"
#echo $pool03logdir$pool03log
#tail -n 10 $pool03logdir$pool03log | sort -r | grep balance | head -n 1 && echo

#echo "### $pool04name ###"
#echo $pool04logdir$pool04log
#tail -n 10 $pool04logdir$pool04log | sort -r | grep balance | head -n 1 && echo

#echo "### $pool05name ###"
#echo $pool05logdir$pool05log
#tail -n 10 $pool05logdir$pool05log | sort -r | grep balance | head -n 1 && echo

#echo "### $pool06name ###"
#echo $pool06logdir$pool06log
#tail -n 10 $pool06logdir$pool06log | sort -r | grep balance | head -n 1 && echo

#echo "### $pool07name ###"
#echo $pool07logdir$pool07log
#tail -n 10 $pool07logdir$pool07log | sort -r | grep balance | head -n 1 && echo

#echo "### $pool08name ###"
#echo $pool08logdir$pool08log
#tail -n 10 $pool08logdir$pool08log | sort -r | grep balance | head -n 1 && echo

#echo "### $pool09name ###"
#echo $pool09logdir$pool09log
#tail -n 10 $pool09logdir$pool09log | sort -r | grep balance | head -n 1 && echo

#echo "### $pool10name ###"
#echo $pool10logdir$pool10log
#tail -n 10 $pool10logdir$pool10log | sort -r | grep balance | head -n 1 && echo

#echo "### $pool11name ###"
#echo $pool11logdir$pool11log
#tail -n 10 $pool11logdir$pool11log | sort -r | grep balance | head -n 1

