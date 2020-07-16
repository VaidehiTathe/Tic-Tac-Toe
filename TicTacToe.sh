#!/bin/bash +x
echo "Welcome to Tic Tac Toe Problem"
LETTER1=O
LETTER2=X
one=1
declare -a board

function resetBoard()
{
	board=(. . . . . . . . . .)
}


function tossToPlay()
{
	toss=$((RANDOM%2))
	if [[ $toss -eq $one ]]
	then
		echo "Computer will play first"
	else
		echo "Player will plays first"
	fi
}
resetBoard
tossToPlay
