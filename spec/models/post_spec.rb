require 'rails_helper'

RSpec.describe Post, type: :model do
  it "should have a title" do
    post = FactoryBot.create("post")
    expect(post.title.blank?).to_not be(true)
  end

  it 'should have content' do
    post = FactoryBot.create(:post)
    expect(post.content.blank?).to_not be(true)
  end

  it 'should belong to a user' do
    post = FactoryBot.create(:post)
    expect(post.user.nil?).to_not be(true)
  end
end
