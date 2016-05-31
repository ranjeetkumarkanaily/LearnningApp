require 'rails_helper'

RSpec.describe Lesson, type: :model do
  it "should create one Lesson" do
  	l = Lesson.create!(name: "Lesson 1")

  	expect(Lesson.count).to eq(1)
  end
end
