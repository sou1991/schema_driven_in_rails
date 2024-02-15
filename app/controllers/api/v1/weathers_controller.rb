module Api
  module V1
    class WeathersController < ApplicationController
      def index
        @weathers = Weather.all
        render json: { weathers: @weathers}, status: 200
      end
    end
  end
end
