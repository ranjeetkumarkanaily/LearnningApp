require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it "should create one Teacher" do
  	Teacher.create!(name: "Teacher 1")

  	expect(Teacher.count).to eq(1)
  end
end
