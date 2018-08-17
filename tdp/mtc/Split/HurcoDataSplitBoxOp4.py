#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
inFile1 = '/Users/tdh1/Desktop/MTCdata/Clean/2-1-2017-Hurco02-Clean.txt'	#input file
inFile2 = '/Users/tdh1/Desktop/MTCdata/Clean/2-6-2017-Hurco02-Clean.txt'	#input file
outFile = '/Users/tdh1/Desktop/MTCdata/Split/'	#output location
outName = 'Box-OP4-Hurco02-'	# output name prefix

count = 0

startLines = (283151,287232,290742,294311)
endLines   = (287229,287232,290742,294311)

tempFile = open( inFile2, 'r' )
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