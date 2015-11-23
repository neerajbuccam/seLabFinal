require 'rails_helper'

 describe Post do

  it "is valid with title description category and download option " do
    #post = Post.new( title: 'Goku', description: 'DragonBall Z hero', category: 'Anime')
    expect(FactoryGirl.build(:post)).to be_valid
  end
  it "is invalid without a title" do
    post = Post.new(title: nil)
    post.valid?
    expect(post.errors[:title]).to include("can't be blank")
  end
  it "is invalid without a description" do
    post = Post.new(description: nil)
    post.valid?
    expect(post.errors[:description]).to include("can't be blank")
  end
  it "is invalid without a category" do
    post = Post.new(category: nil)
    post.valid?
    expect(post.errors[:category]).to include("can't be blank")
  end

  #it "is invalid without a image"
 end
