class LegalissuesController < ApplicationController
  before_action :set_legalissue, only: [:show, :edit, :update, :destroy]

  # GET /legalissues
  # GET /legalissues.json
  def index
    @legalissues = Legalissue.all
  end

  # GET /legalissues/1
  # GET /legalissues/1.json
  def show
  end

  # GET /legalissues/new
  def new
    @legalissue = Legalissue.new
  end

  # GET /legalissues/1/edit
  def edit
  end

  # POST /legalissues
  # POST /legalissues.json
  def create
    @legalissue = Legalissue.new(legalissue_params)

    respond_to do |format|
      if @legalissue.save
        format.html { redirect_to @legalissue, notice: 'Legalissue was successfully created.' }
        format.json { render :show, status: :created, location: @legalissue }
      else
        format.html { render :new }
        format.json { render json: @legalissue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legalissues/1
  # PATCH/PUT /legalissues/1.json
  def update
    respond_to do |format|
      if @legalissue.update(legalissue_params)
        format.html { redirect_to @legalissue, notice: 'Legalissue was successfully updated.' }
        format.json { render :show, status: :ok, location: @legalissue }
      else
        format.html { render :edit }
        format.json { render json: @legalissue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legalissues/1
  # DELETE /legalissues/1.json
  def destroy
    @legalissue.destroy
    respond_to do |format|
      format.html { redirect_to legalissues_url, notice: 'Legalissue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legalissue
      @legalissue = Legalissue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legalissue_params
      params.require(:legalissue).permit(:name, :issue, :comment, :done)
    end
end
