class OptionsController < ApplicationController

	def create
    @question = Question.find(params[:question_id])
    @option = @question.options.create(option_params)
    redirect_to question_path(@question)
  end

	def destroy
    @question = Question.find(params[:question_id])
    @option = @question.options.find(params[:id])
    @option.destroy
    redirect_to question_path(@question), status: 303
  end
	
  private
    def option_params
      params.require(:option).permit(:name, :correct)
    end
end
