#!/bin/bash +x
echo "Welcome to Tic Tac Toe Problem"
declare -a board
ROWS=3
COLUMNS=3
SIZE=$(($ROWS*$COLUMNS))
count=0
countX=0
countO=0
function resetBoard()
{

        board=(. . . . . . . . .)
}

function displayBoard()
{
        for (( count=0;count<${#board[@]};))
        do
                echo "|${board[count]} || ${board[count+1]} || ${board[count+2]}|"
                count=$((count+3))
        done
}

function checkDraw()
{
        if [[ $countX -eq 5 && $countO -eq 4 ]] || [[ $countX -eq 4 && countO -eq 5 ]]
        then
                echo "No one wins.Its a draw"
                gameStop=1
        elif [[ $countX -eq 4 && $countO -eq 5 ]]
        then
                echo " No one wins.Its a draw"
                gameStop=1
        fi
}


function checkWin()
{

        if [[ ${board[$1]} != "." ]] && [[ ${board[$1]} -eq ${board[$2]} ]] && [[ ${board[$2]} == ${board[$3]} ]]
        then
                stop=1
                echo "player wins"
        fi
#	break
}
function checkWinLoose()
{
        checkWin 0 1 2
        checkWin 3 4 5
        checkWin 6 7 8
        checkWin 0 3 6
        checkWin 1 4 7
        checkWin 2 5 8
        checkWin 0 4 8
        checkWin 2 4 6
}

function compMove()
{
         read -p "Enter a position" position
        if [[ ${board[$((position-1))]} == "." ]]
        then
                board[$((position-1))]=$compLetter
        else
                echo "Enter corect position"
                myMove
        fi
        displayBoard
        checkWinLoose
        myMove

}
function myMove()
{
        read -p "Enter a position" position
        if [[ ${board[$((position-1))]} == "." ]]
        then
                board[$((position-1))]=$playerLetter
        else
                echo "Enter corect position"
                myMove
        fi
        displayBoard
        checkWinLoose
        compMove
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
        myMove

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
        echo "Computer will play first and he chooses letter $computerLetter And player letter is $plyerLetter"
        compMove
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


