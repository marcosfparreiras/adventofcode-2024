# Source: https://adventofcode.com/2024/day/1#part2

class Day01Problem2
  def initialize(file_path = 'input.txt')
    build_lists(file_path)
  end

  # Overall complexity: O(n)
  def solve
    right_list_occurrences = count_occurrences(@right_list)
    calculate_similarity_score(@left_list, right_list_occurrences)
  end

  private

  # Complexity O(n)
  def build_lists(file_path)
    @left_list = []
    @right_list = []
    File.foreach(file_path) do |line|
      line_values = line.split(' ')
      @left_list << line_values[0].to_i
      @right_list << line_values[1].to_i
    end
  end

  # Complexity O(n)
  def count_occurrences(list)
    hsh = {}
    list.each do |number|
      hsh[number] ||= 0
      hsh[number] = hsh[number] + 1
    end
    hsh
  end

  # Complexity O(n)
  def calculate_similarity_score(left_list, right_list_occurrences)
    similarity_score = 0
    left_list.each do |left_number|
      occurrences = right_list_occurrences[left_number] || 0
      similarity_score += left_number * occurrences
    end
    similarity_score
  end
end

result = Day01Problem2.new.solve
# result: 22014209
puts "The solution is #{result}"
