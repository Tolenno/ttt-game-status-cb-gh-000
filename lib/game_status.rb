# Helper Method
board = [" ", " ", " ", "X", "X", "X", " ", " ", " "]

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

def won?(board) #accept board argument and return true for win & false if no win yet. if there is a win will return winning combo indexes as an array.
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0] #puts each index of winning combo into a variable
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    trigger = board[win_index_1, win_index_2, win_index_3].all? do |checker|
      checker == "X"
    end

    if trigger == true
      return win_combination
    end
  end
end

if won?(board) == false
  puts "No win"
else
  puts "We have a winner"
end
