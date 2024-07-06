class CodeConverter
  def initialize(ruby_code)
    @ruby_code = ruby_code
  end

  def convert_to_rust
    rust_code = @ruby_code.gsub('def', 'fn')
                          .gsub('end', '}')
                          .gsub(/(\w+)\((\w+),\s*(\w+)\)/, '\1(\2: i32, \3: i32) -> i32 {')
                          .gsub('return ', '')
                          .gsub(/(\w+)\s*\+(\s*\w+)/, '\1 + \2')
    "#[allow(dead_code)]\n#{rust_code}"
  end

  def convert_to_cpp
    cpp_code = @ruby_code.gsub('def', '')
                         .gsub('end', '}')
                         .gsub(/(\w+)\((\w+),\s*(\w+)\)/, 'int \1(int \2, int \3) {')
                         .gsub('return ', '')
                         .gsub(/(\w+)\s*\+(\s*\w+)/, 'return \1 + \2;')
    cpp_code
  end
end

# Example usage
ruby_code = <<~RUBY
  def add(a, b)
    return a + b
  end
RUBY

converter = CodeConverter.new(ruby_code)
puts "Ruby Code:"
puts ruby_code
puts "\nConverted to Rust:"
puts converter.convert_to_rust
puts "\nConverted to C++:"
puts converter.convert_to_cpp

