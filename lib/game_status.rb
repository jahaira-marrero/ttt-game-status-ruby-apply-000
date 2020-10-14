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
  [2,5,8], #rightcolumn
  [0,4,8], #leftdiagonal
  [2,4,6] #rightdiagonal
  ]

 def won?(board)
    WIN_COMBINATIONS.each do |i|
      win_index_1 = i[0]
      win_index_2 = i[1]
      win_index_3 = i[2]
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]
   if position_1 == "X" && position_2 == "X" && position_3 == "X"
       return i
     elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
       return i
      else
        false
     end
    end
    false
  end
  def full?(board)
    if (board.select{|i| i == "X" || i == "O"}).length < 9
      return false
    else
      return true
    end
  end
  def draw?(board)
   if full?(board) == true && won?(board) == false
      return true
    else
      return false
    end
  end
  def over?(board)
    if full?(board) == true
      return true
    elsif won?(board)
      return true
    else
     return false
    end
  end
  def winner(board)
    winner = won?(board)
    if winner != false
      if board[winner[0]] == "O"
        return "O"
      elsif board[winner[0]] == "X"
        return "X"
      end
    end
  end

