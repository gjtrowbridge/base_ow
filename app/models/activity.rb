class Activity < ActiveRecord::Base
	has_many :locations, :dependent => :delete_all
	
	accepts_nested_attributes_for :locations, :reject_if => lambda { |a| a[:address].blank? }, :allow_destroy => true
end
