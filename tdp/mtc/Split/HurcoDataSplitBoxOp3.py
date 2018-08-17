#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
inFile1 = '/Users/tdh1/Desktop/MTCdata/Clean/2-1-2017-Hurco02-Clean.txt'	#input file
inFile2 = '/Users/tdh1/Desktop/MTCdata/Clean/2-6-2017-Hurco02-Clean.txt'	#input file
outFile = '/Users/tdh1/Desktop/MTCdata/Split/'	#output location
outName = 'Box-OP3-Hurco02-'	# output name prefix

count = 0

startLines = (234793,236615,238449,240290,242256,244495,246688,248914,251140,253358,255570,257802,260025,262239,264466,266668,271122,273344,275571,277748)
endLines   = (236597,238448,240287,242253,244494,246687,248913,251139,253357,255569,257801,260024,262238,264465,266667,271121,273343,275570,277740,283148)

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