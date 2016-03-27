import os

# pool configuration
_pool_name = 'NuPond'
_port = 3335
# daily interest rates
_interest = {
'bter' : {
'cny' : {
'bid': {
'rate' : 0.0000005,
'target' : 1000000
},
'ask': {
'rate' : 0.0000005,
'target' : 1000000
}
}
}
}

_nuconfig = '/root/.nu/nu.conf' # path to nu.conf
_tolerance = 0.015
_sampling = 24 # number of requests validated per minute
_autopayout = False # try to send payouts automatically
_minpayout = 1 # minimum balance to trigger payout
_grantaddress = "xxx" # custodian grant address
_master = ""
_slaves = []
