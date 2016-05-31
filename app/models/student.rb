class Student < ActiveRecord::Base
	belongs_to :teacher

	has_many :completed_lessons
	has_many :lessons, :through => :completed_lessons

	def progress
		completedList = []
		completed_lessons.each_with_index do |cl, i|
			completedList << "L#{cl.lesson_id} P#{i+1}"
		end
		completedList
	end

	def updateProgress lession_id, content_id
		completed_lessons.create!(lesson_id: lesson_id, content_id: content_id, completion_date: DateTime.now)
	end
end
