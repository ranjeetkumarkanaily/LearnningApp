class CompletedLesson < ActiveRecord::Base
	belongs_to :student
	belongs_to :lesson
	has_many :contents 
end
