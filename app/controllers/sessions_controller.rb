# sessions#LOGIN
get '/sessions/new' do
  erb :'sessions/new'
end


# sessions#CREATE
post '/sessions' do
  @user = User.authenticate(params[:username], params[:password])
  if @user
    session[:id] = @user.id
    redirect "/today"
  else
    @errors = ["Login failed -- please try again"]
    erb :'sessions/new'
  end
end


# sessions#LOGOUT
get '/logout' do
  session[:id] = nil
  redirect '/'
end