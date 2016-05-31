require 'rails_helper'

RSpec.describe Student, type: :model do
  it "should create one Student" do
  	Student.create!(name: "Student 1")

  	expect(Student.count).to eq(1)
  end

  it "should check the progress of a student" do

  end
end
