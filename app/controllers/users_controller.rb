# users#NEW
get '/users/new' do
  @user = User.new
  erb :'new'
end

# users#CREATE
post '/users' do
  @user = User.new(params[:user])
  if @user.save

    redirect '/days/'
  else
    @errors = user.errors.full_messages
    erb :'users/new'
  end
end

# users#SHOW
get '/users/:id' do
  @user = User.find(params[:id])
  if current_user == @user
    erb :'users/show'
  else
    erb :'404'
  end
end
