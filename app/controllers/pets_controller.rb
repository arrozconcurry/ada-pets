class PetsController < ApplicationController
# https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/09-intermediate-rails/creating-apis.md
# This exercise
  def index
    pets = Pet.all #@pets b/c passing it to views. In API there are NO views
      # not appearing in postman because no json call - now json
    render json: pets.as_json(only: [:id, :name, :age, :human]), status: :ok
  end
  # need a show method. There's a route for it but no method
  def show
    if pet = Pet.find_by(params[:id])
      render json: pet.as_json(only: [:id, :name, :age, :human]), status: :ok
    else
      render status: :no_content, json: { errors: pet.errors.messages }
    end
  end
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
