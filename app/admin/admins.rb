ActiveAdmin.register Admin do
  menu priority: 2
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :email, :password, :password_confirmation, :first_name, :last_name

  index do
    id_column
    column :email
    column :first_name
    column :last_name
    column :created_at
    column :updated_at
    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :created_at
  filter :updated_at

  form partial: 'form'
end
