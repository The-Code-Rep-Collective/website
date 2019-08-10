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
            def create
                location = Location.new(location_params)
            
                if location.save
                    render json: {status: 'SUCCESS', message: 'Saved Location', data:location}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Location not saved', data:location.errors}, status: :unprocessable_entity
            end

            def destroy
                location = Location.find(params[:id])
                location.destroy
                render json: {status: 'SUCCESS', message: 'Deleted lLcation', data:location}, status: :ok
            end

            def update
                location = Location.find(params[:id])
                if location.update_attributes(article_params)
                    render json: {status: 'SUCCESS', message: 'Updated Location', data:location}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Location not updated', data:location.errors}, status: :unprocessable_entity
            end

            private

            def location_params
                params.permit(:name, :address, :phone, :description, :units)
            end
        end
    end
end