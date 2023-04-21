module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = [
          {name: 'hoge', age: 30}, 
          {name: 'foo', age: 18}
        ]

        render json: articles
      end
    end
  end
end

