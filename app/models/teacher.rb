class Teacher < ActiveRecord::Base
	has_many :students

	def studentsProgress
		progressCard = {}

		students.each do |s|
			progressCard[s.name] = s.progress
		end

		progressCard
	end
end
