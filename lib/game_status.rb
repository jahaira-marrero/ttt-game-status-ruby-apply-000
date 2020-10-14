# Helper Method
def position_taken?(board, index)
  if (board[index] == "") || (board[index] == " ") || (board[index] == nil)
    taken = false
  else
    taken = true
  taken  
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #toprow
  [3,4,5], #middlerow
  [6,7,8], #bottomrow
  [0,3,6], #leftcolumn
  [1,4,7], #middlecolumn
  [2,5,8] #rightcolumn
  [0,4,8] #leftdiagonal
  [2,4,6] #rightdiagonal
  ]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "," "]

