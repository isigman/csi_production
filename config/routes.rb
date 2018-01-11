Rails.application.routes.draw do

	devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
	get 'pages/index'

	devise_for :users

	root to: "pages#index"
	get '/services', to: 'pages#services'
	get '/research_center', to: 'pages#research_center'
	get '/events', to: 'pages#events'
	get '/client_area', to: 'pages#client_area'
	get '/about', to: 'pages#about'
	get '/portal', to: 'pages#portal'
	get '/contact', to: 'pages#contact'

	post '/research_center', to: 'pages#search_results'
	get '/article/{id}', to: 'pages#article'
	get '/map', to: 'pages#map'
	get '/conference_2018', to: 'pages#conference_2018'
	get '/tax_rating_billing_solutions', to: 'pages#trbs'

	get '/under_construction', to: 'pages#under_construction'

end
