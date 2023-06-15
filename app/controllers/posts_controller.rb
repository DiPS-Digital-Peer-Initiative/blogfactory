class PostsController < ApplicationController
  def index

    settingEntry = ActiveAdminSetting.find_by(:name => Rails.application.config_for(:settings)["org_name"][:key])
    @orgname = settingEntry == nil ? Rails.application.config_for(:settings)["org_name"][:value] : settingEntry.string 
  end
end
