#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
inFile = '/Users/tdh1/Desktop/MTCdata/Clean/2-1-2017-Hurco02-Clean.txt'	#input file
outFile = '/Users/tdh1/Desktop/MTCdata/Split/'	#output location
outName = 'Box-Hurco02-'	# output name prefix

# Define arrays of lines for splits
startLines = (37815, 49674)
endLines   = (49533, 53675)

tempFile = open( inFile, 'r' )
fileLines = tempFile.readlines()	# read all data lines
tempFile.close()

if len( startLines ) == len ( endLines ):
	for index in range( len( startLines ) ):
		if index+1 < 10:
			outSplit = outFile + outName + '0' + str(index+1) +'of20.txt'
		else:
			outSplit = outFile + outName + str(index+1) +'of20.txt'
		
		splitFile = []
		for i in range( startLines[index], endLines[index]+1 ):
			splitFile.append( fileLines[i-1] )
			
		print('Saving: ' + outSplit)
		tempFile = open( outSplit, 'w' )
		tempFile.writelines( splitFile )	# write all split data lines
		tempFile.close()
else:
	print('Array for starting lines and array for ending lines are not the same length')

