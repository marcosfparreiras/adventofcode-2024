# Source: https://adventofcode.com/2024/day/1
# Implements the solution for problem 1 of day 1 of the adventscode of 2024
class Day01Problem1
  def initialize(file_path = 'input.txt')
    build_lists(file_path)
  end

  # Overall complexity: O(n logn)
  def solve
    sort_lists!
    calculate_distance
  end

  private

  # Complexity O(n)
  def build_lists(file_path)
    @left_list = []
    @right_list = []
    File.foreach(file_path) do |line|
      line_values = line.split
      @left_list << line_values[0].to_i
      @right_list << line_values[1].to_i
    end
  end

  # Complexity O(n logn)
  def sort_lists!
    @right_list.sort!
    @left_list.sort!
  end

  # Complexity O(n)
  def calculate_distance
    @left_list.each_with_index.inject(0) do |distance, (left_number, index)|
      distance + (@right_list[index] - left_number).abs
    end
  end
end

result = Day01Problem1.new.solve
# result: 1938424
puts "The solution is #{result}"
