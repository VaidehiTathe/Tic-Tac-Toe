#!/bin/bash +x
echo "Welcome to Tic Tac Toe Problem"
LETTERO=O
LETTERX=X

declare -a board


function displayBoard()
{
	echo -e "| ${board[1]} | ${board[2]} | ${board[3]} |\n_____________\n| ${board[4]} | ${board[5]} | ${board[6]} |\n_____________\n| ${board[7]} | ${board[8]} | ${board[9]} |"
}

function resetBoard()
{
	board=(. . . . . . . . . .)
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
