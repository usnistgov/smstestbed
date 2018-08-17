#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
inFile = '/Users/tdh1/Desktop/MTCdata/Clean/2-2-2017-Hurco04-Clean.txt'	#input file
outFile = '/Users/tdh1/Desktop/MTCdata/Split/'	#output location
outName = 'Cover-Op3-Hurco04-'	# output name prefix


count = 0

startLines = (344061,344842,345635,346418,347204,347993,348786,349571,350349,351122,351907,352685,353465,354250,355034,355819,356608,357399,358187,358977)
endLines   = (344841,345634,346417,347203,347992,348785,349570,350348,351121,351906,352684,353464,354249,355033,355818,356607,357398,358186,358976,359762)

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