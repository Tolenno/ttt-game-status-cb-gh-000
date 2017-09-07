# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  #across combinations
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row

  #up/down combinations
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column

  #diagonal combinations
  [0,4,8], #diagonal topleft/bottomright
  [2,4,6] #diagonal bottomleft/topright

]

def won?(board)