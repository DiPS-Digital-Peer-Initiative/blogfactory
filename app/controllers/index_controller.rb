class IndexController < ApplicationController
     def index
          
          settingEntry = ActiveAdminSetting.find_by(:name => Rails.application.config_for(:settings)["site_name"][:key])
          @title = settingEntry == nil ? Rails.application.config_for(:settings)["site_name"][:value] : settingEntry.string 
	end
end
