class CommentsController < ApplicationController
	before_action :message_one
	# before_action :message_all


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
		@comment=@message.comments.new(comments_params)
		@comment.save
		redirect_to message_path(:id=>@message.id)
	end

	#patch /message/:id
	def update
		message_one
		if @comment.comments.update(comments_params)
			redirect_to message_path(:id=>@message.id)
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
	def comments_params
		params.require(:comment).permit(:comment)
	end
	def message_one
		@message=Message.find(params[:message_id])
	end

	def message_all
		@messages=Message.all
	end
end

