# Accepts a block and returns how many seconds
# it takes to execute the code in the block.
def benchmark
  reverse_start_time = Time.now
  yield
  reverse_end_time = Time.now
  reverse_run_time = reverse_end_time - reverse_start_time
end


