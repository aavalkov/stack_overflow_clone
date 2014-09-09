class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Question Added"
      redirect_to root_url, notice: "Your question has been added"
    else
      render "new"
    end
  end

  def show
    @question = Question.find(params[:id])
    @response = Response.new(question: @question)
    @vote = @response.votes.new
  end

  private

  def question_params
    params.require(:question).permit(:title, :description).merge(user_id: current_user.id)
  end

end
