from __future__ import with_statement
from fabric.api import *
from fabric.contrib import *

def digitalOceanHosts():
    env.hosts = [
        'thedfci.com', 'daedafusion.com',
        'dukeband.org', 'markphilpot.com',
    ]

def update():
    sudo('apt-get update')
    sudo('apt-get -y upgrade')

def checkReboot():
    if files.exists('/var/run/reboot-required'):
        print("Reboot required")

def reboot():
	if files.exists('/var/run/reboot-required'):
		print("Rebooting")
		sudo('reboot')

def install(apps):
    sudo('apt-get -y install %s' % apps)
