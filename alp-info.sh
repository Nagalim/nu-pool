#!/bin/bash
# version 0.30 - changed names
#	from	[pool]-[exchange]-[pair]
#	to	[pool]_[exchange]_[pair]
#
############################

cwd=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

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


# Some variables - additional ALP bots might be appended following the same style

pool01name="liquidbits_ccedk_btc"
pool01logdir=$cwd/unix/$pool01name/logs/
if [ -d "$pool01logdir" ]; then
        pool01log=`ls -t $pool01logdir | head -n 1`
fi

pool02name="liquidbits_ccedk_eur"
pool02logdir=$cwd/unix/$pool02name/logs/
if [ -d "$pool02logdir" ]; then
        pool02log=`ls -t $pool02logdir | head -n 1`
fi

pool03name="liquidbits_ccedk_usd"
pool03logdir=$cwd/unix/$pool03name/logs/
if [ -d "$pool03logdir" ]; then
        pool03log=`ls -t $pool03logdir | head -n 1`
fi

pool04name="nupond_bter_btc"
pool04logdir=$cwd/unix/$pool04name/logs/
if [ -d "$pool04logdir" ]; then
        pool04log=`ls -t $pool04logdir | head -n 1`
fi

pool05name="nupond_bter_cny"
pool05logdir=$cwd/unix/$pool05name/logs/
if [ -d "$pool05logdir" ]; then
        pool05log=`ls -t $pool05logdir | head -n 1`
fi

pool06name="nupool_bittrex_btc"
pool06logdir=$cwd/unix/$pool06name/logs/
if [ -d "$pool06logdir" ]; then
        pool06log=`ls -t $pool06logdir | head -n 1`
fi

pool07name="nupool_poloniex_btc"
pool07logdir=$cwd/unix/$pool07name/logs/
if [ -d "$pool07logdir" ]; then
        pool07log=`ls -t $pool07logdir | head -n 1`
fi

pool08name="nuriver_cryptsy_btc"
pool08logdir=$cwd/unix/$pool08name/logs/
if [ -d "$pool08logdir" ]; then
        pool08log=`ls -t $pool08logdir | head -n 1`
fi

pool09name="nuriver_cryptsy_usd"
pool09logdir=$cwd/unix/$pool09name/logs/
if [ -d "$pool09logdir" ]; then
        pool09log=`ls -t $pool09logdir | head -n 1`
fi


#
# And here starts the part with the outputs
# Just uncomment each ALP bot you want to have in the overview
#

date
#echo "### $pool01name ###"
#echo $pool01logdir$pool01log
#tail -n 2 $pool01logdir$pool01log && echo

#echo "### $pool02name ###"
#echo $pool02logdir$pool02log
#tail -n 2 $pool02logdir$pool02log && echo

#echo "### $pool03name ###"
#echo $pool03logdir$pool03log
#tail -n 2 $pool03logdir$pool03log && echo

#echo "### $pool04name ###"
#echo $pool04logdir$pool04log
#tail -n 2 $pool04logdir$pool04log && echo

#echo "### $pool05name ###"
#echo $pool05logdir$pool05log
#tail -n 2 $pool05logdir$pool05log && echo

#echo "### $pool06name ###"
#echo $pool06logdir$pool06log
#tail -n 2 $pool06logdir$pool06log && echo

#echo "### $pool07name ###"
#echo $pool07logdir$pool07log
#tail -n 2 $pool07logdir$pool07log && echo

#echo "### $pool08name ###"
#echo $pool08logdir$pool08log
#tail -n 2 $pool08logdir$pool08log && echo

#echo "### $pool09name ###"
#echo $pool09logdir$pool09log
#tail -n 2 $pool09logdir$pool09log
