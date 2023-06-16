class PostsController < ApplicationController
  def index
    @posts = Post.all
    settingEntry = ActiveAdminSetting.find_by(:name => Rails.application.config_for(:settings)["org_name"][:key])
    @orgname = settingEntry == nil ? Rails.application.config_for(:settings)["org_name"][:value] : settingEntry.string 
  end
  def show
    @post = Post.find(params[:id])
  end
end
