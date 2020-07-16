#!/bin/bash -x
echo "Welcome to Tic Tac Toe Problem"
LETTERO=O
LETTERX=X

declare -a board


function displayBoard()
{
	echo -e "| ${board[0]} | ${board[1]} | ${board[2]} |\n_____________\n| ${board[3]} | ${board[4]} | ${board[5]} |\n_____________\n| ${board[6]} | ${board[7]} | ${board[8]} |"
}

function resetBoard()
{
	board=(. . . . . . . . . )
}

function playingPlayer()
{
	read -p "Enter cell " cell
	size=${#board[@]}
        echo "cell is $cell"
        for key in ${!board[@]}
        do
		echo "key is $key"
                if [[ $cell -eq $key ]]
                then
			echo "========${board[$key]}"
                        board[$key]=$playerLetter
			echo "+++++++${board[$key]}"
                exit
		fi
        done
	displayBoard
#	playComputer
}
function tossToPlay()
{
	toss=$((RANDOM%2))
	letterCheck=$((RANDOM%2))
	if [[ $((RANDOM%2)) -eq 0 ]]
	then
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
		playingPlayer
	else
                if [[ $letterCheck -eq $one ]]
                then
                        computerLetter=$LETTERO
                        playerLetter=$LETTERX
                else
                        playerLetter=$LETTERO
                        computerLetter=$LETTERX
                fi
		 echo "Computer will play first and he chooses letter $computerLetter And Player letter is $playerLetter"

	fi
}

resetBoard
displayBoard
tossToPlay
