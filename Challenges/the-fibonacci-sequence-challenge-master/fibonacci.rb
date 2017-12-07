def iterative_nth_fibonacci_number(n)
    fibonacci_number = [0, 1]
    if n <= 1
        return fibonacci_number[n]
    end
    for i in 1..(n-1)
        fibonacci_number << (fibonacci_number[i] + fibonacci_number[i-1])
    end
    fibonacci_number[n]
end

def recursive_nth_fibonacci_number(n)
    
    if n == 1
        return 1
    elsif n == 0
        return 0
    else 
        number1 = recursive_nth_fibonacci_number(n-1) 
        number2 = recursive_nth_fibonacci_number(n-2)
        number1 + number2
    end
end
