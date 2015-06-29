class MessagesController < ApplicationController

	#Get /message/
	def index

	end

	#get /message/:id
	def show

	end
	#get /message/new
	def new

	end
	#get /message/:id/edit
	def edit

	end
	#post /message/
	def create

	end

	#patch /message/:id
	def update

	end

	#delete /message/:id
	def destroy

	end

	private
	def message_one
		@message=message.find(params[:id])
	end

	def message_all
		@message
	end
end
