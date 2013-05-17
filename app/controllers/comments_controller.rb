class CommentsController < ApplicationController
  def create
    @pin = Pin.find(params[:pin_id])
    @comment = @pin.comments.create(params[:comment])
    @comment = current_user.comments.create(params[:comment])
    redirect_to pin_path(@pin)
  end

  def show
    @user = User.find(params[:id])
  end
end