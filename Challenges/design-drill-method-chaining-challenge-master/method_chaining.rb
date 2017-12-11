# Refactor for elegance
def shout_backwards(string)
  all_caps = string.upcase.reverse + "!!!"
end

# This is convoluted. Refactor for clarity.
def squared_primes(array)
  array.find_all do |x| 
    (2..x-1).select() do |i| 
      x % i == 0 
    end.count == 0 && x > 1 
  end.map{|p| p*p}
end




