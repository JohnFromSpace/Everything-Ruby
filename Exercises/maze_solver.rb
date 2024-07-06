class MazeSolver
  DIRECTIONS = [
    [0, 1],  # Right
    [1, 0],  # Down
    [0, -1], # Left
    [-1, 0]  # Up
  ]

  def initialize(maze)
    @maze = maze.map(&:chars)
    @rows = @maze.size
    @cols = @maze[0].size
    @start = find_point('S')
    @end = find_point('E')
  end

  def find_point(char)
    @maze.each_with_index do |row, i|
      row.each_with_index do |cell, j|
        return [i, j] if cell == char
      end
    end
    nil
  end

  def solve
    return nil unless @start && @end

    queue = [[@start]]
    visited = Array.new(@rows) { Array.new(@cols, false) }
    visited[@start[0]][@start[1]] = true

    until queue.empty?
      path = queue.shift
      x, y = path.last

      return path if [x, y] == @end

      DIRECTIONS.each do |dx, dy|
        nx, ny = x + dx, y + dy
        if valid_move?(nx, ny, visited)
          visited[nx][ny] = true
          new_path = path.dup << [nx, ny]
          queue << new_path
        end
      end
    end

    nil
  end

  def valid_move?(x, y, visited)
    x.between?(0, @rows - 1) && y.between?(0, @cols - 1) &&
      !visited[x][y] && @maze[x][y] != '#'
  end

  def display_solution
    solution_path = solve
    if solution_path
      solution_path.each do |x, y|
        @maze[x][y] = '*' unless @maze[x][y] == 'S' || @maze[x][y] == 'E'
      end
      @maze.each { |row| puts row.join }
    else
      puts "No solution found."
    end
  end
end

# Example maze
maze = [
  "#########",
  "#S#     #",
  "# # ### #",
  "# # # # #",
  "#    E# #",
  "#########"
]

solver = MazeSolver.new(maze)
solver.display_solution

