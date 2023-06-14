# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    para "<center><h1>Blogfactory Administration Pages</h3></center>".html_safe
    columns do
      column do
        panel "Late-Breaking News About Blogfactory" do
          para "<h2>This panel contains changes that were made to Blogfactory in the previous commit.</h2>".html_safe
          para "Some may be new or updated features, while others may be corrections to names, operations, or functionality.".html_safe
          para "<h2>General Changes</h2>".html_safe
          para "Nothing to see here...".html_safe
        end
      end
      
    end

    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span "Customize this page"
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    div class: "blank_slate_container" do
      span class: "blank_slate" do
        span "Blogfactory Administration Notice"
        small "Blogfactory uses ActiveAdmin for admistration. Please refer to ActiveAdmin's documentation for more."
      end
    end

  end # content
end
