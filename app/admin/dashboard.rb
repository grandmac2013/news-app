ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span "Welcome to News Admin Dashboard"
        small "You can add, edit and destroy news."
      end
    end

    columns do
      column do
        panel "Recent News" do
          ul do
            Article.last(10).map do |article|
              li link_to(article.title, edit_admin_news_path(article))
            end
          end
        end
      end
      column do
        panel "Recent Categories" do
          ul do
            Category.last(10).map do |category|
              li link_to(category.name, edit_admin_category_path(category))
            end
          end
        end
      end
    end
  end
end
