get '/today' do
  @day = Day.find_or_create_by(date: Date.today)
  @quote = @day.quote
  erb :'days/show'
end