


def coin(monies)

	act_chnge = {quarter: 0, dime: 0, nikkel: 0, penny: 0}	

	coins = {qtr: 25, dim: 10, nikk: 5, pen: 1}		

	until (monies == 0)  do

puts	monies

	if monies >= coins[:qtr] 
			monies -= 25
		act_chnge[:quarter] += 1
		 	 
	elsif monies >= coins[:dim]
			monies -= 10
		act_chnge[:dime] += 1
		
	elsif monies >= coins[:nikk]
			monies -= 5 
		act_chnge[:nikkel] += 1
		
	else monies >= coins[:pen]
			monies -= 1
		act_chnge[:penny] += 1						
	
	end

  end

act_chnge
end