import time
from python import client as nupool
import json

__author__ = 'woolly_sammoth'

config = json.load(open('pool.conf.json'))

clients = []
for conf in config:
    client = nupool.Client(conf['server'])
    if not client.set(conf['api_key'], conf['api_secret'], conf['address'], conf['exchange'], conf['unit'], conf['bid_interest'],
                      conf['ask_interest'], conf['bot'], conf['order_match']):
        print "Failed to start client for %s on %s using %s" % (conf['unit'], conf['exchange'], conf['api_key'])
    client.start()
    clients.append(client)
stop = False
while True:
    try:
        if stop:
            for client in clients:
                client.stop()
                client.join()
            break
        time.sleep(60)
    except KeyboardInterrupt:
        stop = True
