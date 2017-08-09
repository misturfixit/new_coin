def changeup(monies)

	act_chnge = {quarters: 0, dimes: 0, nickel: 0, pennies: 0}	

	change = {qtr: 25, dim: 10, nikk: 5, pen: 1}		

	until (monies == 0)  do
		
monies
	if monies >= change[:qtr] 
			monies -= 25
		act_chnge[:quarters] += 1
		 	 
	elsif monies >= change[:dim]
			monies -= 10
		act_chnge[:dimes] += 1
		
	elsif monies >= change[:nikk]
			monies -= 5 
		act_chnge[:nickel] += 1
		
	else monies >= change[:pen]
			monies -= 1
		act_chnge[:pennies] += 1
	end

  end
 p act_chnge
 act_chnge
end


def hashsmasher(myhash)
	change = " "
	myhash.each do |key, value|
		if key == :quarters && value ==1
			key = :quarter
		end
		if key == :dimes && value ==1
	 		key = :dime
	 	end	
		if key == :nickel && value ==1
	 		key = :nickel
	 	end	
	 	if key == :pennies && value ==1
	 		key = :penny
	 	end	
	 	if value > 0 
			change << value.to_s + "   " +  key.to_s  + "<br>"
		end	
	end

	change

end

