def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(numbers)
  sum = 0
  numbers.each do |x|
    sum += x
  end
  sum
end

def multiply(*numbers)
  multiply = 1
  numbers.each do |x|
    multiply *= x
  end
  multiply
end

def power(num, pow)
  num**pow
end

def factorial(number)
  if number < 2
    return 1
  end
  number * factorial(number - 1)
end

