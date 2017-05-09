Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "pets", to: "pets#index", as: "pets"
  get "pet/:id", to: "pets#show", as: "pet"
end

# This exercise
# https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/09-intermediate-rails/creating-apis.md
