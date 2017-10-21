class Day < ActiveRecord::Base
  # Remember to create a migration!

  has_many :national_holidays, class_name: 'Holiday'

  # def national_holidays
  #   # an array of all national holidays
  #   # each element is a Holiday object
  # end



  private

  def get_national_holidays
    # scrape some national holiday website
    # for each holiday, create a Holiday object and associate it with the current Day object
  end

end
