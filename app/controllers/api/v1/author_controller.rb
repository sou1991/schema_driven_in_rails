module Api
	module V1
		class AuthorController < ApplicationController
			def show
				a = Author.find(params[:id])
				render json: a, root: 'auhtor', serializer: AuthorSerializer
			end
		end
	end
end