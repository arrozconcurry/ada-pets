class PetsController < ApplicationController
# https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/09-intermediate-rails/creating-apis.md
# This exercise
  def index
    pets = Pet.all #@pets b/c passing it to views. In API there are NO views
    render json: pets.as_json(only: [:id, :name, :age, :human]), status: :ok
  end
  # not appearing in postman because no json call - now json

  # need a show method. There's a route for it but no method

  # need a create method to post
end

# To set this project up from scratch
  # when this was created did they use `--api`?
    # `--api` tells Rails we want an API app
    # "Make the ApplicationController inherit from ActionController::API
    #   instead of ActionController::Base"
  # generate controller
  # generate model
  # create and migrate database
  # add seed data
