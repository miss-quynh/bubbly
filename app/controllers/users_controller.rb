# users#NEW
get '/users/new' do
  @user = User.new
  if request.xhr?
    erb :'users/new', layout: false
  else
    erb :'users/new'
  end
end

# users#CREATE
post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect '/today'
  else
    @errors = user.errors.full_messages
    erb :'users/new'
  end
end