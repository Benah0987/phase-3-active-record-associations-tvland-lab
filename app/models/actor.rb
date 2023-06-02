class Actor < ActiveRecord::Base
    # define the assocations
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    characters.each do |character|
      puts "#{character.name} - #{character.show.title}"
    end
  end

end