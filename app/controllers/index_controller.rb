class IndexController < ApplicationController
     def index
          
          settingEntry = ActiveAdminSetting.find_by(:name => Rails.application.config_for(:settings)["site_name"][:key])
          @title = settingEntry == nil ? "Blogfactory Title" : settingEntry.string 
	end
end
