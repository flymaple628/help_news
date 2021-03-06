class MessagesController < ApplicationController
	#before_action :message_one
	before_action :message_all
	#Get /message/
	def index
		if params[:id]
			message_one
		else
			@message=Message.new
		end

		@messages=@messages.where(:tag_id=>params[:tag])

	end

	#get /message/:id
	def show
		message_one
		@comments=@message.comments
		@comment=@message.comments.build
	end
	#get /message/new
	# def new

	# end
	#get /message/:id/edit
	def edit

	end
	#post /message/
	def create
		@message=Message.new(message_params)
		@message.save
		redirect_to messages_path
	end

	#patch /message/:id
	def update
		message_one
		if @message.update(message_params)
			redirect_to messages_path
		else
			flash[:alert]="update error"
			render :action=>:index
		end
	end

	#delete /message/:id
	def destroy
		message_one
		@message.destroy
		redirect_to messages_path
	end

	private
	def message_params
		params.require(:message).permit(:title,:conten,:tag_id)
	end
	def message_one
		@message=Message.find(params[:id])
	end

	def message_all
		@messages=Message.all
	end
end
