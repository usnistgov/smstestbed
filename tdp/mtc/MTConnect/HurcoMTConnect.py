#!/usr/bin/env python

__author__ = 'Thomas Hedberg, Jr.'
__date__ = '2/24/2017'

"""
Generate MTConnect XML Sample output for MTC CRADA
Destination: https://github.com/usnistgov/smstestbed
"""

import os, datetime, subprocess, shutil, tempfile, urllib.request, threading
import xml.etree.ElementTree
from datetime import date, timedelta
from itertools import zip_longest

class agentThread (threading.Thread):
	def __init__(self, threadID, name, config):
		super(agentThread, self).__init__()
		self.threadID = threadID
		self.name = name
		self.config = config
		self._stop = threading.Event()
	def run(self):
		print('Starting ' + self.name)
		start_agent(self.name, self.config)
		print('Exiting ' + self.name)
	def stop(self):
		self._stop.set()
	def stopped(self):
		return self._stop.isSet()

# define the agent function for the thread
def start_agent(threadName, config_file):
	cmd='agent run '+config_file                                                                          
	p=subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)                              
	output, errors = p.communicate()

# set log path
log_path = '/Users/tdh1/Desktop/MTCdata/MTConnect/MTCproc.log'
# set path of local data archive
data_path = '/Users/tdh1/Desktop/MTCdata/PartData/'
# set path of agent configs
config_path = '/Users/tdh1/Desktop/MTCdata/MTConnect/agent.cfg'
# set machine UUIDs and adapter data file name
machine_uuid = ('Hurco02', 'Hurco04', 'Hurco04')
machine_port = ('7883', '7885', '7885')

# input name prefix
inName = ('Box-Hurco02-','Cover-Hurco04-','Plate-Hurco04-')

# set path to save data
save_path = '/Users/tdh1/Desktop/MTCdata/MTConnect/'

# set url for agent
agent_url = 'http://localhost:6000/'

# log start
with open(log_path, 'a') as out_file:
	out_file.write('Start Data Parsing: %s\n' % datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"))

if __name__ == '__main__':
	print ("Starting")
	print ("File: %s" % os.path.dirname(__file__))

# start agent
# create new threads
#thread1 = agentThread(1, "Agent", config_path)
# set thread as daemon, no need to close the thread -- it will end automatically when program ends
#thread1.daemon = True
# start new Threads
#thread1.start()

# process adapter data
for i in range( len ( inName ) ):
	
	# generate MTConnect samples files
	for j in range ( 20 ):
		if j+1 < 10:
			inSplit = inName[i] + '0' + str(j+1) +'of20.txt'
			outFile = inName[i] + '0' + str(j+1) +'of20.xml'
		else:
			inSplit = inName[i] + str(j+1) +'of20.txt'
			outFile = inName[i] + str(j+1) +'of20.xml'

		print('Adapter Log File: %s' % data_path+inSplit )		

		# start adapter
		cmd='ruby /etc/mtconnect/adapter/run_sample.rb -p '+machine_port[i]+' '+data_path+inSplit                                                                          
		p=subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)                              
		output, errors = p.communicate()

		# determine first and last sequence
		e = xml.etree.ElementTree.fromstring(urllib.request.urlopen(agent_url+machine_uuid[i]+'/current').read().decode("utf-8"))
		for aHeader in e.findall('{urn:mtconnect.org:MTConnectStreams:1.3}Header'):
			seqFirst = int(aHeader.get('firstSequence'))
			seqLast = int(aHeader.get('lastSequence'))

		# generate qdr input file using curl
		count = seqLast - seqFirst + 1
		sample_xml = urllib.request.urlopen(agent_url+machine_uuid[i]+'/sample?&count='+str(count)+'&from='+str(seqFirst)).read().decode("utf-8")
		with open(save_path+outFile, 'w') as output:
			output.write(sample_xml)
		print ("MTConnect File: %s" % save_path+outFile )	

# log finish
with open(log_path, 'a') as out_file:
	 out_file.write('Complete Data Upload: %s\n' % datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"))

