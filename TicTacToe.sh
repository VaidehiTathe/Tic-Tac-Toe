#!/bin/bash +x
echo "Welcome to Tic Tac Toe Problem"
NUM_ROWS=3
NUM=COLS=3
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
resetPlayBoard
