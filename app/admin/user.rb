require 'securerandom'
ActiveAdmin.register User do

  permit_params :email, :password, :password_confirmation, :corp

  index do
    selectable_column
    id_column
    column :email
    column :corp
    column :sign_in_count
    column :created_at
    actions
  end

  # Create Passowrd
  random_string = SecureRandom.hex

  form do |f|
    f.inputs do
      f.input :email
	  f.input :password, :input_html => { :value => random_string }
	  f.input :password_confirmation, :input_html => { :value => random_string }
      f.input :corp, :as => :select, :collection => Corp.all
    end
    f.actions
  end
  #Kickoff email to user with password and login link

end
