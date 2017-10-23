get '/today' do
  @day = Day.find_or_create_by(date: Date.today)
  erb :'days/show', layout: :today_layout
end