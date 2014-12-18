Rails.application.routes.draw do

  ActiveAdmin.routes(self)
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

# Accounts
	resources :accounts

# Contacts
	resources :contacts

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

# Quotes and More
	resources :quotes do
		collection do
			get 'view_quote'
		end
	end
	resources :price_books do
		collection do
			get 'view_book'
		end
	end

# Vendor
	resources :vendors do
		collection do
			get 'view_vendor'
		end
	end

# Products and More
	resources :products do
		collection do
			get 'view_product'
		end
	end

	resources :cases do
		collection do
			get 'view_case'
		end
	end

	resources :solutions do
		collection do
			get 'view_solution'
		end
	end

# Potentials
	resources :potentials

# Appointments
	resources :appointments

# Campaigns
	resources :campaigns

# Landing Page
root 'leads#index'

end