# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      panel "Recent Package" do
        ul do
          Package.limit(5).map do |pack|
            li link_to(pack.description, admin_pack_path(pack))
          end
        end
      end
    end
  end
end
