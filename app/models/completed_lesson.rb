class CompletedLesson < ActiveRecord::Base
	belongs_to :student
	belongs_to :lesson

	def content 
		Content.where(lesson_id: self.lesson_id, id: self.content_id)[0].symbolic_name
	end 
end
