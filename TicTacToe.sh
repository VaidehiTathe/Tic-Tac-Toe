#!/bin/bash +x
echo "Welcome to Tic Tac Toe Problem"
ROWS=3
COLS=3
BOARD_SIZE=$((NUM_ROWS*NUM_COLS))

position=0
declare -a board

function resetPlayBoard()
{
	for((position=1;position<=BOARD_SIZE;position++))
	do
		board[$position]=0;
	done
}


function toss()
{
	random=$((RANDOM%2))
		if [ $random -eq 0 ]
		then
			echo "Player will play first"
		else
			echo "Computer will play first"
		fi
}
toss
