class QuizzesController < ApplicationController

	def index
		@quizzes = Quiz.all
		@questions = Question.all
	end

	def show
		@quiz = Quiz.find(params[:id])
	end
	
	def new
		@quiz = Quiz.new
    @questions = Question.all		
	end

	def create
    p "++++++++++++++"
		@quiz = Quiz.new(params[:quiz])
    p "++++++++"
		
		if @quiz.save
			redirect_to studenttest_path
		else
			render :new
		end
	end

	
end
