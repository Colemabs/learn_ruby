#write your code here
def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	
	total = 0
	array.each do |i|
		total = total + i
	end
	return total
end

def multiply(array)
	total = 1
	array.each do |i|
		total = total * i
	end
	return total
end

def power(a , b)
	
	total = 1
	for i in 1..b
		total = total * a
	end
	return total
end

def factorial(num)
if num == 0
		1
else
	 num * factorial(num - 1)
	end
end