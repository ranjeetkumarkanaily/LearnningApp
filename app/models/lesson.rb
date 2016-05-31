class Lesson < ActiveRecord::Base
	has_many :contents

	has_many :completed_lessons
	has_many :students, :through => :completed_lessons
end
