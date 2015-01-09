class Student < ActiveRecord::Base
	before_save :assign_house, if: :needs_sorted?

  belongs_to :house

  validates :name, presence: true

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def needs_sorted?
  	return self.house.nil?
  end

 	def assign_house
 		house_name = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"].sample
  	house = House.find_by(name: house_name)
  	self.house_id = house.id
 	end

end