class MessagesController < ApplicationController
	def index
		@messages = Message.all
	end

	def new
		@message = Message.new
	end

	def create
	end

	def edit
	end

	def update
	end

	def show
		@message = Message.find(params[:id])
	end
end
