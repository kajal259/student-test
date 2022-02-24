class Questions::OptionsController < ApplicationController
	before_action :find_question
  def index
		@options = 	Option.all

		# @options = Option.where(:question_id => @question.id)
		 @options = Question.find(params[:question_id]).options
		 @options.count
	end

	def show
		@option = Option.find(params[:id])
	end

	def new
		# @options = Question.find(params[:question_id]).options.pluck(:correct)
		# @option_values = [false, @options.include?(true) ? 'false' : true]
		
		@option = Option.new
	end

	def create
		@option = Option.new(option_params.merge(question_id: params[:question_id]))
	
		
		if @option.save
			redirect_to question_options_path
		else
			render :new
		end
	end
	def edit
		@option = Option.find(params[:id])
	end
	
	def update
		@option = Option.find(params[:id])
		if @option.update(option_params)
			redirect_to question_options_path
		else
			render :edit
		end
	end

	def destroy
    @option = Option.find(params[:id])
    @option.destroy

    redirect_to question_options_path, status: :see_other
  end
	private
	
	def option_params
		params.require(:option).permit(:name, :correct)
	end

	def find_question
		@question = Question.find(params[:question_id])
	end

end
