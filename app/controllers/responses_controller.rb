class ResponsesController < ApplicationController

  def new
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    if @response.save
      respond_to do |format|
        format.html { redirect_to question_path(@response.question_id) }
        format.js do
          @vote = @response.votes.new
        end
      end
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
        #include respond to and thing .js
        #format .js
        #render not redirect
