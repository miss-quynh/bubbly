require 'open-uri'

class Day < ActiveRecord::Base
  # Remember to create a migration!

  after_save :get_national_holidays

  has_many :national_holidays, class_name: 'Holiday'

  private

  def get_national_holidays
    # scrape some national holiday website
    # for each holiday, create a Holiday object and associate it with the current Day object
    site = Nokogiri::HTML(open("https://www.checkiday.com/"))
    holidays = site.css('.mdl-card__title-text a')[0..-3]
    holidays.each do |holiday|
      self.national_holidays.create(name: holiday.text)
    end
  end

end
