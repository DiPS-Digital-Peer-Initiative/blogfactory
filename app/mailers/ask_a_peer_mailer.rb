class AskAPeerMailer < ApplicationMailer

     def aapq_email
          @aapq = params[:aapq]
          sitename = ActiveAdminSetting.find_by(:name => Rails.application.config_for(:settings)["site_name"][:key]) == nil ? "Blogfactory Title" : ActiveAdminSetting.find_by(:name => Rails.application.config_for(:settings)["site_name"][:key]).string

          

          mail(to: ActiveAdminSetting.find_by(:name => Rails.application.config_for(:settings)["aapq_default_email"][:key]), subject: sitename+' | Ask-a-Peer Query')
     end
end
