#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
inFile = '/Users/tdh1/Desktop/MTCdata/Clean/2-13-2017-Hurco02-Clean.txt'	#input file
outFile = '/Users/tdh1/Desktop/MTCdata/Split/'	#output location
outName = 'Box-OP5-Hurco02-'	# output name prefix

count = 0

startLines = (161,47459,73444,98826,124737,149536,174278,199077,224166,248863,273631,298498,323376,348147,373357,398161,423104,447897,472724,497542)
endLines   = (47442,73441,98824,124731,149533,174275,199075,224165,248862,273616,298497,323375,348145,373356,398160,423103,447895,472723,497541,522367)

tempFile = open( inFile, 'r' )
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