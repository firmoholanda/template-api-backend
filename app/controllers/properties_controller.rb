class PropertiesController < ApplicationController
    before_action :set_property, only: [:show, :edit, :update, :destroy]

    def index
        @properties = Property.all
        render json: @properties
    end

    def show
        render json: @property
    end

    # GET /properties/1/edit
     def edit
     end  

    def create
        @property = Property.create(property_params)
        render json: @property
    end

    def update
        @property.update(property_params)
        render json: @property
    end

    def destroy
        @properties = Property.all
        @property.destroy
        render json: @properties
    end

    private    
    def set_property
        @property = Property.find(params[:id])
    end

    def property_params
        # params.permit(:owner, :address, :country, :tax_number, :fips_code, :property_type, :year_build, :units, :lot_size, :created_at, :updated_at)
        params.permit(:owner, :address, :property_type)
    end
end
