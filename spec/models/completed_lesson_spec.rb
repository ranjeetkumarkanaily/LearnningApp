require 'rails_helper'

RSpec.describe CompletedLesson, type: :model do
	it "should create one Lesson" do
	  	l = Lesson.create!(name: "Lesson 1")
	  	l.contents.create!(name: "Content 1")
	  	s = Student.create!(name: "Student 1")

	  	CompletedLesson.create!(lesson_id: l.id, content_id: l.contents[0].id, student_id: s.id)

	  	expect(CompletedLesson.count).to eq(1)
	end
end
