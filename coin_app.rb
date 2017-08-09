require "sinatra"
require_relative "changer.rb"
require_relative  "users.rb"

get '/' do
	msg = params[:msg] || ""	
	erb :login, locals: {msg: msg}
end

post '/login' do

	usrname = params[:usrname]
	p_word = params[:p_word]
	authorize(usrname, p_word)
end


get '/name' do
	msg = params[:msg]
	erb :names, locals:{msg:msg}
end

post '/name' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	redirect '/change?f_name='+f_name+'&l_name='+l_name
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
	date = params[:new_date]
	"here it ain't #{date}"
	redirect '/changeup?monies='+monies+'&date='+date+'&f_name='+f_name+'&l_name='+l_name
end

get '/changeup' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	monies = params[:monies]
	date = params[:new_date]
	moneyhash = changeup(monies.to_i)
	upd_hash = hashsmasher(moneyhash)
	
	erb :results, locals:{monies:monies,upd_hash:upd_hash,f_name:f_name,l_name:l_name}
end

get '/back' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	monies = params[:monies]
	
	redirect '/change?f_name=' + f_name + '&l_name=' + l_name
end

post '/back' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	date = params[:date]
	redirect '/change?f_name=' + f_name + '&l_name=' + l_name
end
get '/what' do
	erb :what 
end