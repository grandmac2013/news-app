ActiveAdmin.register Article, as: "News" do


  permit_params :category_id, :title, :content, :image, :status, :author_name, :author_id
  actions :index, :edit, :update, :create, :destroy, :new
  form do |f|
    # f.semantic_errors *f.object.errors.keys

    f.inputs "Details" do
      f.input :title
      f.input :content
      f.input :image
      f.input :status
      f.input :author_name
      f.input :category_id, :as => :select, :collection => Category.all.collect {|category| [category.name, category.id] }
      f.input :author_id, :as => :select, :collection => AdminUser.all.collect {|user| [user.email, user.id] }
    end
    f.actions
  end


  filter :title
  filter :category_id
  filter :author_name
  filter :status
  filter :created_at
  filter :updated_at
  filter :content

end
