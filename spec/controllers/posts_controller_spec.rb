require "rails_helper"


describe PostsController do

  describe 'Get #index' do
    it "populates array of all post" do
      post1 = create(:post, title: 'Batman')
      post2 = create(:post, title: 'Goku')
      get :index
      expect(assigns(:posts)).to match_array([post1, post2])
    end
    it "renders the index template" do
      get :index
      expect(response).to render_template :index
    end
  end



  describe 'Get #show' do
    it "assigns the requested post to @post" do
      post = create(:post)
      get :show, id: post
      expect(assigns(:post)).to eq post
    end

    it "renders the :show template" do
      post = create(:post)
      get :show, id: post
      expect(response).to render_template :show
    end
  end

  describe 'Get #edit' do
    it "assigns the requested post to @post" do
      post = create(:post)
      get :edit, id: post
      expect(assigns(:post)).to eq post
    end

    it "renders the :edit template" do
     post = create(:post)
     get :edit, id: post
     expect(response).to render_template :edit
    end
  end


  describe "Post #create" do
    context "with valid attributes" do
      it "saves new record to the database" do
      #   expect{
      #   post :create, post: Factory.attributes_for(:post)
      # }.to change(Post,:count).by(1)
      end

      it " redirects to Post#show" do

      end
    end
  end


  # describe 'Get #new' do
  #   it "assigns a new Post to @post" do
  #     get :new
  #     expect(assigns(:post)).to be_a_new(Post)
  #   end
  #   it "renders the :new template" do
  #     get :new
  #     expect(response).to render_template :new
  #   end
  # end



end
