#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
inFile1 = '/Users/tdh1/Desktop/MTCdata/Clean/2-1-2017-Hurco04-Clean.txt'	#input file
inFile2 = '/Users/tdh1/Desktop/MTCdata/Clean/2-2-2017-Hurco04-Clean.txt'	#input file
outFile = '/Users/tdh1/Desktop/MTCdata/Split/'	#output location
outName = 'Plate-Op1-Hurco04-'	# output name prefix

inFiles = (inFile1, inFile2)

count = 0
for x in range( len( inFiles ) ):
	# Define arrays of lines for splits
	if x == 0:
		startLines = (3229,10356,17335,24906,31556,38046,44857,52157,58596)
		endLines   = (10354,17333,24902,31547,38023,44855,52153,58950,66154)
	else:
		startLines = (33,6944,14001,21422,29600,36463,44298,50991,57921,65283,72669)
		endLines   = (6940,13995,21418,27966,36459,43797,50987,57909,65279,72636,79287)

	tempFile = open( inFiles[x], 'r' )
	fileLines = tempFile.readlines()	# read all data lines
	tempFile.close()

	if len( startLines ) == len ( endLines ):
		for index in range( len( startLines ) ):
			count += 1
			print( str( count ) )
			if count < 10:
				outSplit = outFile + outName + '0' + str(count) +'of20.txt'
			else:
				outSplit = outFile + outName + str(count) +'of20.txt'
		
			splitFile = []
			for i in range( startLines[index], endLines[index]+1 ):
				splitFile.append( fileLines[i-1] )
			
			print('Saving: ' + outSplit)
			tempFile = open( outSplit, 'w' )
			tempFile.writelines( splitFile )	# write all split data lines
			tempFile.close()
	else:
		print('Array for starting lines and array for ending lines are not the same length')