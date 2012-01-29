class Activity < ActiveRecord::Base
	has_many :locations, :dependent => :delete_all
	
	accepts_nested_attributes_for :locations
end
