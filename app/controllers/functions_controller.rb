class FunctionsController < ApplicationController
  def index
  	@messages = Message.all
  end
end
