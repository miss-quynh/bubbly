class Quote < ActiveRecord::Base

  include HTTParty

  def self.quote_of_the_day
    quote = self.find_by(day: Date.today)
    if quote
      quote.quote
    else
      result = self.get('http://quotes.rest/qod.json?category=inspire')
      new_quote = self.create(quote: result["contents"]["quotes"].first["quote"], day: Date.today)
      new_quote.quote
    end
  end

end
