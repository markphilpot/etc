from __future__ import with_statement
from fabric.api import *

def digitalOceanHosts():
    env.hosts = [
        'thedfci.com', 'daedafusion.com',
        'dukeband.org', 'markphilpot.com', 'markphilpot.net',
    ]

def update():
    sudo('apt-get update')
    sudo('apt-get -y upgrade')