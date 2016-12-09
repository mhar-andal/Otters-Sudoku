require_relative 'sudoku'

# The sudoku puzzles that your program will solve can be found
# in the sudoku_puzzles.txt file.
#
# Currently, Line 18 defines the variable board_string to equal
# the first puzzle (i.e., the first line in the .txt file).
# After your program can solve this first puzzle, edit
# the code below, so that the program tries to solve
# all of the puzzles.
#
# Remember, the file has newline characters at the end of each line,
# so we call String#chomp to remove them.

board_string = File.readlines('sudoku_puzzles.txt').first.chomp

solved_board = solve(board_string)
if solved?(solved_board)
  puts "The board was solved!"
  puts pretty_board(solved_board)
else
  puts "The board wasn't solved :("
end

#~~~~~~~~~~~~~~~~~~~~~~~~Below this point is Jim's mucking about~~~~~~~~~~~~~~~~~~~~
#The coding loop will work as thus.  The program begins with the feeding the array into the solve command.
#The program will then scan throug the whole board, and pull the x,y coordinates of every blank space and put it into an array
#That array will be saved, and used throughout the program.
#Starting from 0, the program will iterate through that array.  The board itself will also be copied into a variable.
#First coordinate point will be replaced with a 1, and each of the three checking methods run on it.
#If all three return true, that number will be considered valid, and array position 1 will be checked, etc.
#If any return false, 2 will be inserted and tested.  Etc.
#If the program reaches 9 and are still considered false, it will fall into a sub-loop.
#That sub-loop will backtrack to a previously completed space in the Blank_space_array, and iterate up from there.
#Where-as previously that position was 5, it will increase to 6 and run all the checks.
#This will continue until true.
#If that also iterates up until 9, Blank_space_array will move one more space back.
#Continue until a new winning combination is fallen upon.
#This will allow it to solve itself, as every possible iteration can be tested if necessary.
