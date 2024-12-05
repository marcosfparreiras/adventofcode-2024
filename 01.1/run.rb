# Source: https://adventofcode.com/2024/day/1

class Day01Problem1
  def initialize(file_path = 'input.txt')
    build_lists(file_path)
  end

  def solve
    sort_lists!
    calculate_distance
  end

  private

  def build_lists(file_path)
    @left_list = []
    @right_list = []
    File.foreach(file_path) do |line|
      line_values = line.split(' ')
      @left_list << line_values[0].to_i
      @right_list << line_values[1].to_i
    end
  end

  def sort_lists!
    @right_list.sort!
    @left_list.sort!
  end

  def calculate_distance
    distance = 0
    @left_list.each_with_index do |left_number, index|
      distance += (@right_list[index] - left_number).abs
    end
    distance
  end
end

result = Day01Problem1.new.solve
# result: 1938424
puts "The solution is #{result}"
