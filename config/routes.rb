Rails.application.routes.draw do

# Company
	resources :companies do
		collection do
			get 'welcome'
		end
	end

# Devise - User Authentication
  	devise_for :users

# Calendar
 	resources :calendars

# Leads
	resources :leads

# Activities
	resources :phone_calls do
		collection do
			get 'view_call'
		end
	end
	resources :events do
		collection do
			get 'view_event'
		end
	end
	resources :tasks do
	  	collection do
	  		get 'view_task'
	  	end
	end

# Invoices & Orders
	resources :purchase_orders do
		collection do
			get 'view_order'
		end
	end
	resources :sales_orders do
		collection do
			get 'view_order'
		end
	end
	resources :invoices do
		collection do
			get 'view_invoice'
		end
	end

# Landing Page
root 'leads#index'

end