class ExcersizesController < ApplicationController
  before_action :set_excersize, only: [:show, :edit, :update, :destroy]

  # GET /excersizes
  # GET /excersizes.json
  def index
    @excersizes = Excersize.all
  end

  # GET /excersizes/1
  # GET /excersizes/1.json
  def show
  end

  # GET /excersizes/new
  def new
    @excersize = Excersize.new
  end

  # GET /excersizes/1/edit
  def edit
  end

  # POST /excersizes
  # POST /excersizes.json
  def create
    @excersize = Excersize.new(excersize_params)

    respond_to do |format|
      if @excersize.save
        format.html { redirect_to @excersize, notice: 'Excersize was successfully created.' }
        format.json { render :show, status: :created, location: @excersize }
      else
        format.html { render :new }
        format.json { render json: @excersize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /excersizes/1
  # PATCH/PUT /excersizes/1.json
  def update
    respond_to do |format|
      if @excersize.update(excersize_params)
        format.html { redirect_to @excersize, notice: 'Excersize was successfully updated.' }
        format.json { render :show, status: :ok, location: @excersize }
      else
        format.html { render :edit }
        format.json { render json: @excersize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /excersizes/1
  # DELETE /excersizes/1.json
  def destroy
    @excersize.destroy
    respond_to do |format|
      format.html { redirect_to excersizes_url, notice: 'Excersize was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_excersize
      @excersize = Excersize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def excersize_params
      params.require(:excersize).permit(:name, :reps, :weight, :sets, :week_id)
    end
end
