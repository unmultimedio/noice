class AnswersController < ApplicationController
  before_action :authenticate_user!

  def create
    a_params = answer_params
    a_params[:user_id] = current_user.id
    @answer = Answer.new(a_params)

    if @answer.save
      redirect_to @answer.question, notice: 'Answer was successfully created.'
    else
      render status: 400, json: {
        errors: @answer.errors
      }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:body, :question_id)
    end
end
