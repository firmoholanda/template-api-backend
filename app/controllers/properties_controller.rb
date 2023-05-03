class PropertiesController < ApplicationController
    def index
        @properties = Property.all
        render json: @properties
    end

    def show
        @property = Property.find(params[:id])
        render json: @property
    end

    def create
        @property = Property.create(property_params)
        render json: @property
    end

    def update
        @property = Property.find(params[:id])
        @property.update(property_params)
        render json: @property
    end

    def destroy
        @properties = Property.all
        @property = Property.find(params[:id])
        @property.destroy
        render json: @properties
    end

    private

    def property_params
        params.require(:address).permit(:owner, :address, :country, :tax_number, :fips_code, :property_type, :year_build, :units, :lot_size)
    end
end
