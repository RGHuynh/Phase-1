def prime_factors(number)
  prime_factor_result = []
  count = 2
  factor = number
  
  if number == 1 
    return "not today"
  end
    
  until prime_factor_result.reduce(:*) == number
    if (factor / count) * count == factor
      prime_factor_result << count
      factor /= count
    else
      count += 1 
    end
  end
  prime_factor_result
  
end