class User
  @@all_users = []

  attr_accessor :email, :age

  def initialize(email_to_save, age_to_save)
      @email = email_to_save
      @age = age_to_save
      @@all_users << self
  end

  def self.all
      return @@all_users
  end

  def self.find_by_email (mail)
		match = @@all_users.select {|user| user.email == mail}
		return match[0] if match.size > 0
		return nil
	end
  
end