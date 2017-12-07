def factorial_iterative(n)
    number = 1
    if n == 0
      return 1
    end
    
    for i in 1..n
       p number = i * number
    end

    return number
end

def factorial_recursive(n)
    if n <= 0
      return 1 
    else
      n * factorial_recursive(n-1)
    end
end
