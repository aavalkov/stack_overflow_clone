class ResponsesController < ApplicationController

  def new
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    if @response.save

      redirect_to root_url
    else
      @question = Question.find(params[:question_id])
      render 'questions/show'
    end
  end

  private

  def response_params
    params.require(:response).permit(:description, :question_id).merge(user_id: current_user.id)
  end

end
