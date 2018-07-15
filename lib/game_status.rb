# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant


def won?(board)
  win_index = Array.new
  if board.any == " "
    return false 
  else board[0] == "X" and board[1] == "X" and board[2] == "X"
win_index << 0
win_index << 1
win_index << 2    
return win_index
end
end

WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], # bottom row 
    [0,4,8], # top left diagonal 
    [6,4,2], # bottom left diagonal 
    [0,3,6], # left column 
    [1,4,7], # middle column 
    [2,5,8]  # bottom column 
  ]
  
  
# learn --fail-fast