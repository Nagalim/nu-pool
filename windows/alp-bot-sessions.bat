::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: version 0.30 initial windows version
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: This is a nastily scripted batch file, but helps you start mutliple bots at once
::
:: It is designed to reside where it is ::
:: If you move it, you need to adjust the paths - otherwise the ALP bots can't be started
::
:: Don't forget to enter NBT address, API key and API secret in the
:: 'windows/[poolname]/pool-[exchange]-[pair].conf' config file
::
:: Following are the paths to the different ALP bots
:: Remove "::" from the two relevant lines per ALP bot you intend to use
:: Initial setting is: all ALP bots deactivated
::
:: Example:
::	Change from this
:: 	:: liquidbits_ccedk_btc bot; remove "::" from the next two lines to use it
::	::cd %cwd%\liquidbits_ccedk_btc\ 
::	::start client-ccedk-btc.bat
::
::	to that to activate an ALP bot; DON'T remove the comment from the first line!
:: 	:: liquidbits_ccedk_btc bot; remove "::" from the next two lines to use it
::	cd %cwd%\liquidbits_ccedk_btc\
::	start client-ccedk-btc.bat
::
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off 
set cwd=%cd%

:: liquidbits_ccedk_btc bot; remove "::" from the next two lines to use it
::cd %cwd%\liquidbits_ccedk_btc\
::start client-ccedk-btc.bat
::
:: liquidbits_ccedk_eur bot; remove "::" from the next two lines to use it
::cd %cwd%\liquidbits_ccedk_eur\
::start client-ccedk-eur.bat
::
:: liquidbits_ccedk_usd bot; remove "::" from the next two lines to use it
::cd %cwd%\liquidbits_ccedk_usd\
::start client-ccedk-usd.bat
::
:: nupond_bter_btc bot; remove "::" from the next two lines to use it
::cd %cwd%\nupond_bter_btc\
::start client-bter-btc.bat
::
:: nupond_bter_cny bot; remove "::" from the next two lines to use it
::cd %cwd%\nupond_bter_cny\
::start client-bter-cny.bat
::
:: nupool_bittrex_btc bot; remove "::" from the next two lines to use it
::cd %cwd%\nupool_bittrex_btc\
::start client-bittrex-btc.bat
::
:: nupool_poloniex_btc bot; remove "::" from the next two lines to use it
::cd %cwd%\nupool_poloniex_btc\
::start client-poloniex-btc.bat
::
:: nuriver_cryptsy_btc bot; remove "::" from the next two lines to use it
::cd %cwd%\nuriver_cryptsy_btc\
::start client-cryptsy-btc.bat
::
:: nuriver_cryptsy_usd bot; remove "::" from the next two lines to use it
::cd %cwd%\nuriver_cryptsy_usd
::start client-cryptsy-usd.bat
