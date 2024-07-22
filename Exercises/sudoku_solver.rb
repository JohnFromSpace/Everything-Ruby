class SudokuSolver
  def initialize(board)
    @board = board
    @size = board.size
    @box_size = Math.sqrt(@size).to_i
  end

  def solve
    solve_sudoku(0, 0)
  end

  def print_board
    @board.each do |row|
      puts row.join(" ")
    end
  end

  private

  def solve_sudoku(row, col)
    if row == @size
      return true
    end

    if col == @size
      return solve_sudoku(row + 1, 0)
    end

    if @board[row][col] != 0
      return solve_sudoku(row, col + 1)
    end

    (1..@size).each do |num|
      if is_safe?(row, col, num)
        @board[row][col] = num
        return true if solve_sudoku(row, col + 1)
        @board[row][col] = 0
      end
    end

    false
  end

  def is_safe?(row, col, num)
    !used_in_row?(row, num) && !used_in_col?(col, num) && !used_in_box?(row - row % @box_size, col - col % @box_size, num)
  end

  def used_in_row?(row, num)
    @board[row].include?(num)
  end

  def used_in_col?(col, num)
    @board.any? { |row| row[col] == num }
  end

  def used_in_box?(box_start_row, box_start_col, num)
    (0...@box_size).each do |i|
      (0...@box_size).each do |j|
        return true if @board[box_start_row + i][box_start_col + j] == num
      end
    end
    false
  end
end

# Example usage:
board = [
  [5, 3, 0, 0, 7, 0, 0, 0, 0],
  [6, 0, 0, 1, 9, 5, 0, 0, 0],
  [0, 9, 8, 0, 0, 0, 0, 6, 0],
  [8, 0, 0, 0, 6, 0, 0, 0, 3],
  [4, 0, 0, 8, 0, 3, 0, 0, 1],
  [7, 0, 0, 0, 2, 0, 0, 0, 6],
  [0, 6, 0, 0, 0, 0, 2, 8, 0],
  [0, 0, 0, 4, 1, 9, 0, 0, 5],
  [0, 0, 0, 0, 8, 0, 0, 7, 9]
]

solver = SudokuSolver.new(board)
if solver.solve
  puts "Sudoku solved successfully:"
  solver.print_board
else
  puts "No solution exists for the given Sudoku."
end

