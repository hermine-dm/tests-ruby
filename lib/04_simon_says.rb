def echo(arg)
	arg 
end

def shout(string)
	string.upcase
end


def repeat(string, nb=2)
	a = (string+" ")*nb
	return a.to_s.delete_suffix!(' ') #supprime le dernier espace ou utiliser .rstrip espaces à la fin .lstrip pour les debuts et .strip pour choisir
	#ca aurait été plus simple de faire a +(" "+a)*(b-1)
end

def start_of_word(arg, nb)
	arg[0..(nb-1)]  
	
end

def first_word(string)
	string.split[0]
end


def titleize(string)
	a = string.split(' ')
	a.each_with_index.map{|n, i| if n.size>3 || i == 0 then n.capitalize else n end}.join(" ")
	#each with index sert à utiliser index sinon index(n) était une indefined method
end
