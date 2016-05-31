class Student < ActiveRecord::Base
	belongs_to :teacher

	has_many :completed_lessons
	has_many :lessons, :through => :completed_lessons
end
