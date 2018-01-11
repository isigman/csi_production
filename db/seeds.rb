AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

User.create!(email: 'irasigman@gmail.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

AdminUser.create!(email: 'admin@csilongwood.com', password: 'csi_admin', password_confirmation: 'csi_admin') if Rails.env.production? 
