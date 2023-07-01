class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to pet_path(@pet)
  end

  private

  def pet_params
    params.require("pet").permit(:name, :color, :nb_legs, :address, :species, :found_on, :image_url)
  end
end
