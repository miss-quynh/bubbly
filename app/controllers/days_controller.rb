get '/days/:id' do
  @day = Day.find_by(id: params[:id])
  erb :'days/show'
end