class Holiday < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :day
end
