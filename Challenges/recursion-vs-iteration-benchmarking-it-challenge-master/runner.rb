require_relative 'factorial'
require_relative 'fibonacci'
require 'benchmark'


puts Benchmark.measure{factorial_iterative(5000)}*500

puts Benchmark.measure{factorial_recursive(5000)}*500