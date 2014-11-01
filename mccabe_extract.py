#!/usr/bin/python3
import re, sys, os
InputFileName = sys.argv[1]
inputFile = open( InputFileName, 'r' )

pattern = r"""(\w+)@(.*)@(\d+)@LOC:(\d+) COM:(\d+) MVG:(\d+)"""

matchedTuples = re.findall( pattern, inputFile.read() )
for tuple in matchedTuples:
    funcName = tuple[0]
    fileName = tuple[1]
    lineNo   = tuple[2]
    linesOfCode     = int( tuple[3] )
    linesOfComment  = int( tuple[4] ) 
    mccabeNumber    = int( tuple[5] )
    fileNameDisplay = os.path.basename( fileName )
    # print( '{:4} {}() {}:{} linesOfCode={} linesOfComment={}'.format( mccabeNumber, funcName, fileNameDisplay, lineNo, linesOfCode, linesOfComment ) )
    print( '{:4} {}() {}:{}'.format( mccabeNumber, funcName, fileNameDisplay, lineNo ) )

inputFile.close()
