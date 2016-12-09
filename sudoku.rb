#psuedocode

# rreturns each row
# array.scan(/.{9}/).flatten

# puzzle[0..2].each{|row| row.slice(0..2)} gives grid 1
# puzzle[3..5].each{|row| row.slice(0..2)} gives grid 4
# puzzle[6..8].each{|row| row.slice(0..2)} gives grid 7



# 5 3 0 0 7 0 0 0 0
# 6 0 0 1 9 5 0 0 0
# 0 9 8 0 0 0 0 6 0
# 8 0 0 0 6 0 0 0 3
# 4 0 0 8 0 3 0 0 1
# 7 0 0 0 2 0 0 0 6
# 0 6 0 0 0 0 2 8 0
# 0 0 0 4 1 9 0 0 5
# 0 0 0 0 8 0 0 7 9

# 5 3 0 0 7 0 0 0 0
# 6 0 0 1 9 5 0 0 0
# 0 9 8 0 0 0 0 6 0
# 8 0 0 0 6 0 0 0 3
# 4 0 0 8 0 3 0 0 1
# 7 0 0 0 2 0 0 0 6
# 0 6 0 0 0 0 2 8 0
# 0 0 0 4 1 9 0 0 5
# 0 0 0 0 8 0 0 7 9

# Takes a board as a string in the format
# you see in the puzzle file. Returns
# something representing a board after
# your solver has tried to solve it.
# How you represent your board is up to you!
def solve(board_string)
  max_value = 9
  grid_size = 9




  while !solved?


  end
end

# Returns a boolean indicating whether
# or not the provided board is solved.
# The input board will be in whatever
# form `solve` returns.
def solved?(board)
end

# Takes in a board in some form and
# returns a _String_ that's well formatted
# for output to the screen. No `puts` here!
# The input board will be in whatever
# form `solve` returns.
def pretty_board(board)
end

def check_row?(board, position)
  #position will be a single nested array.  That array will have y-axis loc at [0] and x at [1]
  #we need to cycle through the whole array at y-axis location and make sure that it does not have the same int.
  test_integer = board[position[0]][position[1]]
  board[position[0]].each do |integer|
    if integer == test_integer
      return false
    end
    return test_result

  #This initializes the return condition at false.  It then moves through the row, and each time it finds

end

def check_col?

end

def check_grid?

end
