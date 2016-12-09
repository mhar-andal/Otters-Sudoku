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
def solve(puzzle)
  max_value = 9
  grid_size = 9
  board = puzzle.scan(/.{9}/).map { |row| row.chars.map {|cell| cell.to_i} }
  board = board.map{|row| row.map{|num| num == 0 ? num = nil : num} }
  p board


  while solved?(board)

  end
end

# Returns a boolean indicating whether
# or not the provided board is solved.
# The input board will be in whatever
# form `solve` returns.
def solved?(board)
  board.detect{|row| row.include?(nil)}
end

# Takes in a board in some form and
# returns a _String_ that's well formatted
# for output to the screen. No `puts` here!
# The input board will be in whatever
# form `solve` returns.
def pretty_board(board)
  board.each{|row| row.each do |cell|
    if cell == nil
      print 0
    else
      print cell.to_s
    end
  end }

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
  end

  #This initializes the return condition at false.  It then moves through the row, and each time it finds

end

def check_col?(board, position)
  #position will be a single nested array.  That array will have y-axis loc at [0] and x at [1]
  #we need to cycle through the whole array at the x-axis location and make sure there is no integer repeat.
  test_integer = board[position[0]][position[1]]
  y_range = board.length
  y_test_point = 0
  while y_test_point <= y_range
    if board[y_test_point][position[1]] == test_integer
      return false
    else
      y_test_point += 1
    end
  end
  #This initializes the integer being tested, the range of how rows in this columnn there are to be tested, then runs an iterating loop
  #through the same x point in each y row.
end

def check_grid?

end

puzzle = "1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--"
solve(puzzle)
