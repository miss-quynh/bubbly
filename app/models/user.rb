require 'bcrypt'

class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  include BCrypt

  validates :first_name, :last_name, :username, presence: true
  validates :username, uniqueness: true

  def self.authenticate(username, password)
    @user = User.find_by(username: username)
    if @user && @user.password == password
      return @user
    end
    nil
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
