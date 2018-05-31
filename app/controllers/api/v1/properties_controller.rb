class Api::V1::PropertiesController < ApplicationController
  before_action :find_property, only: [:update]
  def create
    @property = Property.new(property_params)
    @property.save
  end

  def index
    @property = Property.all
    render json: @property
  end

  def update
    @property.update(property_params)
    if @property.save
      render json: @property, status: :accepted
    else
      render json: { errors: @property.errors.full_messages }, status: :unprocessible_entity
    end
  end
  def delete
    @property.find(property_params)
    @property.destroy
  end 

  private

  def property_params
    params.permit(:name, :description, :phone_number, :website, :address)
  end

  def find_property
    @property = Property.find(params[:id])
  end
end