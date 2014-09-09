class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      respond_to do |format|
        format.html { redirect_to question_path(@response.question_id) }
        format.js
      end
    else
      render 'questions/show'
    end
  end

  private

    def vote_params
      params.require(:vote).permit(:response_id, :question_id).merge(user_id: current_user.id)
    end
end
