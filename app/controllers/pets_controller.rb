class PetsController < ApplicationController

  def index
    # TODO: set up data for index view
    # for this owner based on the params that im passing throuh
    @owner = Owner.find(params[:owner_id])
    # find their pet info for that one owner
    @pets = @owner.pets
  end

  def show
    # TODO: set up data for show view
    @pets = Pet.find(params[:id])
    pet_id = params[:id]
  end

  # TODO: set up *new* method with data for new view
  # https://stackoverflow.com/questions/2034700/form-for-with-nested-resources/4611932#4611932
  def new
    @owner = Owner.find(params[:owner_id])
    @pet = Pet.new

  end


  # TODO: set up *create* method with database interactions for create
  def create
    owner = Owner.find(params[:owner_id])
    pet = Pet.create(pet_params)
    if pet.save
      # when you save the pet then put that pet into the owner.pets
      owner.pets << pet
      redirect_to pet_path(pet)
    end
  end


  # TODO: handle save errors and communicate issues to user

  private
  def pet_params
    params.require(:pet).permit(:name, :breed, :date_of_birth)
  end

end
