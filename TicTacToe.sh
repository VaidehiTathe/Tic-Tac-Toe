#!/bin/bash +x
echo "Welcome to Tic Tac Toe Problem"
ROWS=3
COLS=3
BOARD_SIZE=$((ROWS*COLS))

position=0
declare -a board

function resetPlayBoard()
{
	for((position=1;position<=BOARD_SIZE;position++))
	do
		board[$position]=0;
	done
}

function playerChooseLetter()
{

        read -p "Choose a letter X or O:" letter
        if [[ $letter == X ]]
        then
                playerLetter=X
                computerLetter=O
        else
                playerLetter=O
                computerLetter=X
        fi
        echo "Player will play first and he chooses letter $playerLetter And Computer letter is $computerLetter"
       

}

function computerChooseLetter()
{
        letterCheck=$((RANDOM%2))
        if [[ $letterCheck -eq $one ]]
        then
                computerLetter=O
                playerLetter=X
        else
                playerLetter=O
                computerLetter=X
        fi
        echo "Computer will play first and he chooses letter $computerLetter And player letter is $playerLetter"
       
}

function tossToPlay()
{
        toss=$((RANDOM%2))
        case $toss in
                0)
                        playerChooseLetter
                        ;;
                1)
                        computerChooseLetter
                        ;;
        esac
}
tossToPlay
