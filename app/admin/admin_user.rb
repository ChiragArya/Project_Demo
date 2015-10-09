ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      # f.input :password
      # f.input :password_confirmation
    end
    f.actions
  end

  after_create { |admin| admin.send_reset_password_instructions }#after_create method sends an email to the registered email address with a link to set password
  def password_required? #checks if the record is getting created for the first time and returns false if so
    new_record? ? false : super
  end

end
