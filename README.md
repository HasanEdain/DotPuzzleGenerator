# README

## About
This is an OSX application written in Swift to generate "Domino Dot" puzzels (like a word search, but with dominos)

Set the size of the puzzle (in half domino increments) and the number of "Hint" tiles 
Generate creates a new puzzle.

Set the filename and "Save" will save three files to:
/Users/<Current User>/Library/Containers/com.npc.DominoDotsPuzzleGenerator/Data

<File Name>_<Save Count>_hints.pdf
<File Name>_<Save Count>_puzzle.pdf
<File Name>_<Save Count>_solved.pdf
Each run of the app will start <Save Count> at zero and increment it each time "Save" is pressed.
