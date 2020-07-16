#!/bin/bash +x
echo "Welcome to Tic Tac Toe Problem"
LETTERO=O
LETTERX=X
declare -a board
playerSwitch=1

function displayBoard()
{
	echo -e "| ${board[0]} | ${board[1]} | ${board[2]} |\n_____________\n| ${board[3]} | ${board[4]} | ${board[5]} |\n_____________\n| ${board[6]} | ${board[7]} | ${board[8]} |"

}

function resetBoard()
{
	board=(. . . . . . . . .)
}

function playerChooseLetter()
{

	read -p "Choose a letter X or O:" l
        if [[ $l == $LETTERX ]]
        then
                playerLetter=$l
                computerLetter=$LETTERO
        else
                playerLetter=$l
               	computerLetter=$LETTERX
        fi
        echo "Player will play first and he chooses letter $playerLetter And Computer letter is $computerLetter"


}

function computerChooseLetter()
{
	letterCheck=$((RANDOM%2))
	if [[ $letterCheck -eq $one ]]
	then
        	computerLetter=$LETTERO
               	playerLetter=$LETTERX
        else
                playerLetter=$LETTERO
                computerLetter=$LETTERX
        fi
        echo "Computer will play first and he chooses letter $computerLetter And Player letter is $playerLetter"


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

resetBoard
tossToPlay
displayBoard

