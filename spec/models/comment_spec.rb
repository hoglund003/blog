require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'should have one user' do
    comment = create(:comment)
    expect(comment.user).to_not be(nil)
  end

  it 'should have one post' do
    comment = create(:comment)
    expect(comment.post).to_not be(nil)
  end
end
