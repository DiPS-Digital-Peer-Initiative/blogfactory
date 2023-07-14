class PostsController < ApplicationController
  before_action :authenticate_user!, :except => [ :index, :show ]

  def index
    @posts = Post.all

    @spotlightpost = Post.order("created_at").last
    @recentposts = Post.all.length > 1 ? Post.order("created_at").reverse_order.drop(1)[...6] : []


    @otherposts = Post.all.length > 7 ? Post.order("created_at").reverse_order.drop(1)[6...11] : []


    settingEntry = ActiveAdminSetting.find_by(:name => Rails.application.config_for(:settings)["site_name"][:key])
    @blogname = settingEntry == nil ? Rails.application.config_for(:settings)["site_name"][:value] : settingEntry.string 
  end

  def show
    @post = Post.find(params[:id])
    
    @orgdesc = ActiveAdminSetting.find_by(:name => Rails.application.config_for(:settings)["org_desc"][:key])
    @orgname = ActiveAdminSetting.find_by(:name => Rails.application.config_for(:settings)["org_name"][:key])
  end

  def new
    @post = Post.new
    @availablecategories = Category.all
  end

  def create
    @post = Post.new(post_params)
    @availablecategories = Category.all
    @post.user = current_user
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
    @availablecategories = Category.all
  end

  def update
    @post = Post.find(params[:id])
    @availablecategories = Category.all

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path, status: :see_other
  end

  private
		def post_params
			params.require(:post).permit(:title, :description, :content, :category_id, :header_image)
		end
end
