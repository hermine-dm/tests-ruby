def who_is_bigger(a, b, c)
	if a == nil || c == nil || b == nil
		return "nil detected"
	else 
		n = [a,b,c].max
		if a == n
			return "a is bigger"
		elsif b == n
			return "b is bigger"
		else 
			return "c is bigger"
		end
	end
end

def reverse_upcase_noLTA(string)
	string.reverse.upcase.delete('TLA')
end

def array_42(array)
	array.include?(42) #beaucoup plus simple
=begin
	a = 0
	array.each do |nb|
		if nb == 42
			a +=1
		end
	end
	if a >= 1
		return true
	else return false
	end
=end
end

def magic_array(arr)
	arr.flatten.sort.map{|nb| nb*=2}.delete_if{|nb| (nb%3 == 0)}.uniq #le sens n'importe peu
=begin
	arr = arr.flatten.sort
	err = []
	arr.each do |nb|
		nb *=2
		err.push(nb)
	end
	#faire un map au lieu du each ça aurait été plus simple
	urr = err.delete_if{|nb| (nb%3 == 0)}.uniq
=end
end



