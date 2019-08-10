module Api
    module V1
        class LocationsController < ApplicationController
            def index
                locations = Location.order('created_at DESC');
                render json: {status: 'SUCCESS', message: 'Loaded Locations', data:locations}, status: :ok
            end
            def show
                location = Location.find(params[:id]);
                render json: {status: 'SUCCESS', message: 'Loaded Location', data:location}, status: :ok
            end
        end
    end
end