class MessagesController < ApplicationController
	before_action :authenticate_user!
	def index
		@messages = Office.find(current_user.office_name).mailbox.inbox
	end

	def new
		@message = Message.new
	end

	def create
		if params[:send_to].present?
		@message = Message.new(params[:send_to], params[:subject])
		@message.save
		current_user.send_message(Office.find(params[:send_to]), params[:subject])
		redirect_to '/'
	end

	def edit
	end

	def update
	end

	def show
		@message = Message.find(params[:id])
	end
end
end
