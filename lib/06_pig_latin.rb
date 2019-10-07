def translate (s)
    a=s.split(' ')
    b=[]
    a.each do |item|
        while (/[bcdfghjklmnprstvwxyz]/).match(item[0]) || ("qu").match(item[0..1]) #attention aux []sinon cherche le mot
            if (/[bcdfghjklmnprstvwxyz]/).match(item[0])
                item = item+item[0]
                item = item[1..item.size]
            else
                item = item + item[0] + item[1]
                item = item[2..item.size+1]
            end
        end
        item=item+"ay"
        b.push(item)
    end
    return s=b.join(' ')
end

=begin
		if items[0] =~ /[aeiou]/ 
			items = items + 'ay'
			puts items
			err.push(items)
		else 
			items[0] = items[n]
			puts items	
			err.push(items)
		end	

		for n in 0..items.size
			while items[n] =~ /[aeiou]/
				#items[n] = items[-1]
				puts items[0...n]

				#err.push(items)
			end
		end
		
	end

	#a.map{|items| if items[0] =~ /[aeiou]/ then items = (items + 'ay') else items end}
	
=begin
		items = items.split
		items.each do |n|
			if n =~ /[aeiou]/ 
				items = items.to_s + 'ay' #ca ne marche pas 
				#items = items.flatten
				puts n[0]
			else
				puts "no"
			end
		end
	end
=end
