class DoggoController < ApplicationController

  def index
    @doggos = Doggo.all
  end

  def show
    @doggo = Doggo.find(params[:id])
  end

  def new
    @doggo = Doggo.new
  end

  def create
    @doggo = Doggo.create(doggo_params)
    redirect_to doggo_path(@doggo)#@doggo
  end

  def edit
    @doggo = Doggo.find(params[:id])
  end

  def update
    @doggo = Doggo.find(params[:id])
    @doggo.update(doggo_params)
    redirect_to @doggo
  end

  def destroy
    @doggo = Doggo.find(params[:id])
    @doggo.destroy
    redirect_to doggos_path()
  end


  private
  def doggo_params
    params.require(:doggo).permit(:name,:species)
  end

end
