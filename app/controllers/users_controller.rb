include ActionView::Helpers::AssetUrlHelper

class UsersController < ApplicationController
     def show
          @user = User.find_by_username(params[:username])
          @user_avatar_path = @user.avatar.attached? ? url_for(@user.avatar) : asset_path('assets/default_user.png')
     end      
end
