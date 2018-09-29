class ModelCarsController < ApplicationController
  before_action :find_model_car, only: [:show, :edit, :update, :destroy]

  def index
    @model_cars = ModelCar.all
  end

  def show
    #code
  end

  def new
    @model_car = ModelCar.new
  end

  def create
    @model_car = ModelCar.new(model_car_params)
    if @model_car.save
          flash[:success] = "Đã tạo model xe!"
         redirect_to @model_car
    else
         render ‘new’
    end
  end

  def edit
    #code
  end

  def update
    if @model_car.update(model_car_params)
         redirect_to @model_car, notice: “Update thành công”
    else
         render ‘edit’
    end
  end

  def destroy
    @model_car.destroy
    redirect_to root_path, notice: “Đã xóa model xe”
  end

  private
  def model_car_params
    params.require(:model_car).permit(:model, :no_seat, :factory_price)
  end

  def find_model_car
    @model_car = ModelCar.find(params[:id])
  end

end
