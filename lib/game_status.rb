# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant


def won?(board)
  win_index = Array.new
  if board.all?{|i| i == " "}
    return false 
  elsif board[0] == "X" and board[1] == "X" and board[2] == "X"
    win_index << 0
    win_index << 1
    win_index << 2    
      return win_index
  elsif board[3] == "X" and board[4] == "X" and board[5] == "X"
    win_index << 3
    win_index << 4
    win_index << 5    
      return win_index
  elsif board[6] == "X" and board[7] == "X" and board[8] == "X"
    win_index << 6
    win_index << 7
    win_index << 8    
      return win_index
  elsif board[0] == "X" and board[4] == "X" and board[8] == "X"
    win_index << 0
    win_index << 4
    win_index << 8    
      return win_index
  elsif board[6] == "X" and board[4] == "X" and board[2] == "X"
    win_index << 6
    win_index << 4
    win_index << 2    
      return win_index
  elsif board[0] == "O" and board[3] == "O" and board[6] == "O"
    win_index << 0
    win_index << 3
    win_index << 6    
      return win_index
  elsif board[1] == "O" and board[4] == "O" and board[7] == "O"
    win_index << 1
    win_index << 4
    win_index << 7    
      return win_index
  elsif board[2] == "O" and board[5] == "O" and board[8] == "O"
    win_index << 2
    win_index << 5
    win_index << 8    
      return win_index
  elsif board[2] == "O" and board[4] == "O" and board[6] == "O"
    win_index << 2
    win_index << 4
    win_index << 6    
      return win_index
      
  end
end

def full?(board)
  if board.all? {|i| i != " "}
    return true 
end 

WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], # bottom row 
    [0,4,8], # top left diagonal 
    [6,4,2], # bottom left diagonal 
    [0,3,6], # left column 
    [1,4,7], # middle column 
    [2,5,8],  # bottom column 
    [2,4,6]  # right diagonal win 
  ]
  
  
# learn --fail-fast