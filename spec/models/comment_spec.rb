require 'rails_helper'

describe Comment do

   it "is valid with content user id and post id" do
      expect(FactoryGirl.build(:comment)).to be_valid
   end


   it "is invalid without content" do
     comment = Comment.new(content: nil)
     comment.valid?
     expect(comment.errors[:content]).to include("can't be blank")
   end

   it "is invalid without a Post Id" do
     comment = Comment.new(post_id: nil)
     comment.valid?
     expect(comment.errors[:post_id]).to include("can't be blank")
   end

   it "is invalid without a User Id" do
     comment = Comment.new(user_id: nil)
     comment.valid?
     expect(comment.errors[:user_id]).to include("can't be blank")
   end

   

end
