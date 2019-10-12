#write your code here
#

def add(a,b)
	return a+b
end

def subtract(a,b)
	return a-b
end

def sum(arr)
	sum = 0
	arr.each do |elem|
		sum = sum + elem
	end
	return sum
end

def multiply(arr)
	sum = 1
	arr.each do |elem|
		sum = sum * elem

	end
	return sum
end

def power(a,b)
	return a**b
end

def factorial(n)
	if (n==0 or n==1)
		return 1
	else
		return n * factorial(n-1)
	end
end

