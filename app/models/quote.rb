class Quote < ActiveRecord::Base

  include HTTParty

  def self.quote_of_the_day
    quote = self.find_by(day: Date.today)
    if quote
      quote.body
    else
      result = self.get('http://quotes.rest/qod.json?category=inspire')
      new_quote = self.create(body: result["contents"]["quotes"].first["quote"], day: Date.today, author: result["contents"]["quotes"].first["author"])
      new_quote.body
    end
  end

  def self.quote_author
    quote = self.find_by(day: Date.today)
    if quote
      quote.author
    else
      result = self.get('http://quotes.rest/qod.json?category=inspire')
      new_quote = self.create(body: result["contents"]["quotes"].first["author"], day: Date.today)
      new_quote.author
    end
  end
end
