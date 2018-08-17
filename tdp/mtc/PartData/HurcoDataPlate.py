#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
inFile = '/Users/tdh1/Desktop/MTCdata/Split/'	#input location
inName = ('Plate-OP1-Hurco04-','Plate-OP2-Hurco04-')	# input name prefix
outFile = '/Users/tdh1/Desktop/MTCdata/Split/Plate-Hurco04-'	#output location

numFiles = 20

for i in range( numFiles ):
	print( str( i+1 ) )
		
	if i+1 < 10:
		outSplit = outFile + '0' + str(i+1) +'of20.txt'
	else:
		outSplit = outFile + str(i+1) +'of20.txt'
	
	for j in range( len( inName ) ):
		if i+1 < 10:
			inSplit = inFile + inName[j] + '0' + str(i+1) +'of20.txt'
		else:
			inSplit = inFile + inName[j] + str(i+1) +'of20.txt'
		
		tempFile = open( inSplit, 'r' )
		fileLines = tempFile.readlines()	# read all data lines
		tempFile.close()
		
		print('Appending to: ' + outSplit)
		if j == 0:
			tempFile = open( outSplit, 'w' )
		else:
			tempFile = open( outSplit, 'a' )
		tempFile.writelines( fileLines )	# write all data lines
		tempFile.close()
	