echo "Welcome to Tic Tac Toe Problem"
LETTER1=O
LETTER2=X
declare -a board

function displayBoard()
{
	echo -e "| ${board[1]} | ${board[2]} | ${board[3]} |\n_____________\n| ${board[4]} | ${board[5]} | ${board[6]} |\n_____________\n| ${board[7]} | ${board[8]} | ${board[9]} |"
}

function resetBoard()
{
	board=(. . . . . . . . . .)
}

resetBoard
displayBoard
