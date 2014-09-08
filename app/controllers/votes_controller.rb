class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end

  def create

    @vote = Vote.new(vote_params)
    if @vote.save
      flash[:notice] = "Vote saved"
      redirect_to root_url
    else
      render 'questions/show'
    end
  end

  private

    def vote_params
      params.require(:vote).permit(:response_id, :question_id).merge(user_id: current_user.id)
    end
end
