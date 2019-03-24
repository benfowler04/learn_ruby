def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(numbers)
    sum = 0
    numbers.each do |i|
        sum += i
    end
    sum
end

def multiply(numbers)
    product = 1
    numbers.each do |i|
        product *= i
    end
    product
end

def power(a, b)
    a ** b
end

def factorial(a)
    result = 1
    while a > 0
        result *= a
        a -= 1
    end
    result
end
