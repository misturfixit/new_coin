def authorize(usrname, p_word)

users = { Joe:"1122", usr:"pwd", sowhunter:"sooie", admin:"admin"}	

users.each_pair do |nam, p_w|	
	if usrname == nam.to_s && p_word == p_w
			msg = "Logging On"
		redirect '/name?msg=' + msg	
 
	elsif usrname == nam.to_s
			msg = "Wrong Password"
			redirect '/?msg=' + msg
	
	elsif p_word == p_w
			msg = "Wrong Username"
			redirect '/?msg=' + msg
	end	
  end
  		msg = "Wrong Username and Password"
  		redirect '/?msg=' + msg  		
end
