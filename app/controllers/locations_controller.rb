# frozen_string_literal: true

class LocationsController < ApplicationController
  def index
    @locations = locations.ApplicationController
    @locations = @locations.where(housing_type: params[:housing_type]) if params[:housing_type].present?

    render json: @locations
  end
end
