
p "Warmup"
def range(start, ending)
    return [] if ending < start
    [start] + range(start + 1, ending)
end

p range(1,5)

p "Exponentiation"

def exp(b,n)
    return 1 if n == 0
    b * exp(b, n -1)
end

def exp2(b,n)
    return 1 if n == 0
    if n.even?
        exp2(b, n / 2 ) ** 2
    else
       b * exp2(b, (n - 1) / 2) ** 2
    end
end

p exp(2,0)
p exp(3,6)
p exp2(3,6)
p exp2(5,7)

p "Deep dup"
def deep_dup(array)
    result = []
    return array if !array.is_a?(Array)
    array.each do |ele| 
        result << deep_dup(ele)
    end
    result
end

robot_parts = [
  ["nuts", "bolts", "washers"],
  ["capacitors", "resistors", "inductors"]
]

p deep_dup(robot_parts)
p deep_dup([[1,2],[1,2,3]])

p "Fibonacci"

def fibonacci_num(n)
    return [0] if n == 1
    return [0, 1] if n == 2
    fibonacci_num(n - 1) << fibonacci_num(n - 1)[-1] + fibonacci_num(n - 2)[-1]
end

def fibonacci_num2(n)
    head = [0, 1]
    
end

p fibonacci_num(5)
p fibonacci_num(8)