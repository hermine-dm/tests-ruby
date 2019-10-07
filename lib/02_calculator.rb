def add(a, b)
	a + b
	
end

def subtract(a,b)
	a - b
end

def sum(arr)
	arr.inject(0, :+)
end

def multiply(a,b)
	a * b 
end

def power(a,b)
	a**b
end

def factorial(a)
	
	(1..a).inject(:*) || 1 #revient au meme que ecrire inject(1, :*) valeur par default
	
end