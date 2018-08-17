#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
inFile1 = '/Users/tdh1/Desktop/MTCdata/Clean/2-1-2017-Hurco02-Clean.txt'	#input file
inFile2 = '/Users/tdh1/Desktop/MTCdata/Clean/2-6-2017-Hurco02-Clean.txt'	#input file
outFile = '/Users/tdh1/Desktop/MTCdata/Split/'	#output location
outName = 'Box-OP1-Hurco02-'	# output name prefix

inFiles = (inFile1, inFile2)

count = 0
for x in range( len( inFiles ) ):
	# Define arrays of lines for splits
	if x == 0:
		startLines = (37815, 49674,53681)
		endLines   = (49533, 53675, 65919)
	else:
		startLines = (475, 14629, 27071, 39311, 51547, 76148, 88342, 100513, 112628, 124817, 136974, 149170, 161351, 173499, 185707, 197846, 210026)
		endLines   = (14628, 27059, 39309, 51545, 63791, 88339, 100512, 112627, 124814, 136970, 149168, 161350, 173498, 185705, 197845, 210021, 212594)

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