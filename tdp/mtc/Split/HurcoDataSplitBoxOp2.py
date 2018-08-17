#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
inFile1 = '/Users/tdh1/Desktop/MTCdata/Clean/2-1-2017-Hurco02-Clean.txt'	#input file
inFile2 = '/Users/tdh1/Desktop/MTCdata/Clean/2-6-2017-Hurco02-Clean.txt'	#input file
outFile = '/Users/tdh1/Desktop/MTCdata/Split/'	#output location
outName = 'Box-OP2-Hurco02-'	# output name prefix

count = 0

startLines = (213600,214454,215233,215978,216663,217446,218222,219093,219877,220660,221503,222333,223180,224006,224840,225668,226507,227342,228170,228994)
endLines   = (214453,215229,215975,216660,217443,218220,219092,219876,220657,221502,222332,223179,224005,224839,225667,226506,227341,228169,228993,229827)

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