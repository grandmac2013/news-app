ActiveAdmin.register Category do

  permit_params :name, :description, :author_id
  actions :index, :edit, :update, :create, :destroy, :new


  filter :name
  filter :created_at


  form do |f|
    # f.semantic_errors *f.object.errors.keys

    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :author_id, :as => :select, :collection => AdminUser.all.collect {|user| [user.email, user.id] }
    end
    f.actions
  end
  
end
