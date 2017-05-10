class PetsController < ApplicationController
# https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/09-intermediate-rails/creating-apis.md
# This exercise
  def index
    pets = Pet.all #@pets b/c passing it to views. In API there are NO views
      # not appearing in postman because no json call - now json
    # render json: pets.as_json(only: [:id, :name, :age, :human]), status: :ok
    render :json => pets, status: :ok
  end
  # need a show method. There's a route for it but no method
  def show
    pet = Pet.find_by(id: params[:id])
    if pet
      render json: pet, status: :ok
    else
      render json: pet, status: :no_content
    end
  end

  # need a create method to post
  def create
    pet = Pet.new(pet_params)
    if pet.save
      render status: :ok, json: { id: pet.id }
    else
      render status: :bad_request, json: { errors: pet.errors.messages }
    end
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :age, :human)
  end
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
