require "sinatra"
require_relative "changer.rb"


get '/' do
	msg = params[:msg] || ""	
	erb :login, locals: {msg: msg}
end

post '/login' do
users = { Joe:"1122", usr:"pwd", sowhunter:"sooie", admin:"admin"}	
	usrname = params[:usrname]
	p_word = params[:p_word]

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


get '/name' do
	msg = params[:msg]
	erb :names, locals:{msg:msg}
end

post '/name' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	redirect '/change?f_name=' + f_name + '&l_name=' + l_name
end
 
get '/change' do
 f_name = params[:f_name]
 l_name = params[:l_name]
 erb :changepart, locals:{f_name:f_name,l_name:l_name}
end

post '/change' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	monies = params[:monies]
	redirect '/changeup?monies=' + monies + '&f_name=' + f_name + '&l_name=' + l_name
end

get '/changeup' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	monies = params[:monies]

end
get '/what' do
	erb :what 
end