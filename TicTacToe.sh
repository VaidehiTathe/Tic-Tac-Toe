#!/bin/bash +x
echo "Welcome to Tic Tac Toe Problem"
declare -a board

function resetBoard()
{
	board=(. . . . . . . . . .)
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
