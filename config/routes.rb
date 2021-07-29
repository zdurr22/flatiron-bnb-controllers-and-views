Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/cities/new", to: "cities#new", as: "new_city"
  post "/cities", to: "cities#create"
  get "/cities/:id", to: "cities#show", as: "city"
  get "/cities/:id/edit", to: "cities#edit", as: "edit_city"
  patch "/cities/:id", to: "cities#update"


  get "/listings/new", to: "listings#new", as: "new_listing"
  post "/listings", to: "listings#create"
  get "/listings/:id", to: "listings#show", as: "listing"
  get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"
  patch "/listings/:id", to: "listings#update"


  get "/neighborhoods/new", to: "neighborhoods#new", as: "new_neighborhood"
  post "/neighborhoods", to: "neighborhoods#create"
  get "/neighborhoods/:id", to: "neighborhoods#show", as: "neighborhood"
  get "/neighborhoods/:id/edit", to: "neighborhoods#edit", as: "edit_neighborhood"
  patch "/neighborhoods/:id", to: "neighborhoods#update"


  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"

end
