


def changeup(monies)

	act_chnge = {quarter: 0, dime: 0, nikkel: 0, penny: 0}	

	change = {qtr: 25, dim: 10, nikk: 5, pen: 1}		

	until (monies == 0)  do

	 
monies
	if monies >= change[:qtr] 
			monies -= 25
		act_chnge[:quarter] += 1
		 	 
	elsif monies >= change[:dim]
			monies -= 10
		act_chnge[:dime] += 1
		
	elsif monies >= change[:nikk]
			monies -= 5 
		act_chnge[:nikkel] += 1
		
	else monies >= change[:pen]
			monies -= 1
		act_chnge[:penny] += 1						
	end

  end
 act_chnge
end

def hashsmasher(key, value)
	"#{value} #{key}"

end

def separate(arr)
	if arr.any?
		arr.pop
	end
end
