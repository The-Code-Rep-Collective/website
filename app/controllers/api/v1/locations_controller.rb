module Api
    module v1
        class LocationsController < ApplicationController
            def index
                locations = Location.order('created_at DESC');
                render json: {status: 'SUCCESS', message: 'Loaded Locations', data:locations}, status:ok
            end
        end
    end
end