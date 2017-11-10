ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
# 
# 
  permit_params :name, :email, :password, :role

  form do |f|
    inputs "Administration of Users" do
      input :name
      input :email
      input :password
      input :role
    end
    actions
  end

  controller do
    def update
      if (params[:user][:password].black? && params[:user][:password_confirmation].black?)
        params[:user].delete("password")
        params[:user].delete("password_confirmation")        
      end
      super
    end
  end

  index do
    column :index
    column :name
    column :email
    column :role
    column :active
    column :created_at

    actions
  end

  filter :role, as: :select
  filter :email


end
