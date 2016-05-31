require 'rails_helper'

RSpec.describe Content, type: :model do
  it "should create on content" do
  	l = Lesson.create!(name: "Lesson 1")
  	l.contents.create!(name: "Content 1")
  	expect(Content.count).to eq(1)
  end
end
