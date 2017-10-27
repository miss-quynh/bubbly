class Quote < ActiveRecord::Base

  include HTTParty

  belongs_to :day

  def self.generate
    result = self.get('http://quotes.rest/qod.json?category=inspire')
    self.create(parse_response(result))
  end

  private

  def self.parse_response(response)
    body = response["contents"]["quotes"].first["quote"]
    author = response["contents"]["quotes"].first["author"]
    return { body: body, author: author }
  end

end
