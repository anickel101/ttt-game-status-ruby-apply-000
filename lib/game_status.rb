# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],  # top row
  [3,4,5],  # middle row
  [6,7,8],  # bottom row
  [0,3,6],  # left col
  [1,4,7],  # center col
  [2,5,8],  # right col
  [0,4,8],  # left diag
  [2,4,6]   # right diag
  ]

def won?(board)
  WIN_COMBINATIONS.each do |combos|
   
    test_square1 = combos[0]
    test_square2 = combos[1]
    test_square3 = combos[2]
 
    actual_square1 = board[test_square1]
    actual_square2 = board[test_square2]
    actual_square3 = board[test_square3]
    
    if actual_square1 == actual_square2 && actual_square2 == actual_square3 && position_taken?(board, test_square1)
      return combos
    end
  end
  return false
end

def full?(board)
  board.all? {|index| board[index].position_taken?(board, index) == true}
end





    
    
  