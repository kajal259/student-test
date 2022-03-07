class StudenttestsController < ApplicationController
  before_action :set_studenttest, only: %i[ show edit update destroy ]

  # GET /studenttests or /studenttests.json
  def index
    @studenttests = Studenttest.all
  end

  # GET /studenttests/1 or /studenttests/1.json
  def show
  end

  # GET /studenttests/new
  def new
    @studenttest = Studenttest.new
  end

  # GET /studenttests/1/edit
  def edit
  end

  # POST /studenttests or /studenttests.json
  def create
    @studenttest = Studenttest.new(studenttest_params)
    @studenttest.student = current_student

    respond_to do |format|
      if @studenttest.save
        format.html { redirect_to new_quiz_path(@quiz), notice: "Studenttest was successfully created." }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studenttest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studenttests/1 or /studenttests/1.json
  def update
    respond_to do |format|
      if @studenttest.update(studenttest_params)
        format.html { redirect_to studenttest_url(@studenttest), notice: "Studenttest was successfully updated." }
        format.json { render :show, status: :ok, location: @studenttest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studenttest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studenttests/1 or /studenttests/1.json
  def destroy
    @studenttest.destroy

    respond_to do |format|
      format.html { redirect_to studenttests_url, notice: "Studenttest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studenttest
      @studenttest = Studenttest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def studenttest_params
      params.require(:studenttest).permit(:subject_id)
    end
end
