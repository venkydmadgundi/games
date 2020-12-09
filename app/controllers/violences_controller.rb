class ViolencesController < ApplicationController
  before_action :set_violence, only: [:show, :edit, :update, :destroy]

  # GET /violences
  # GET /violences.json
  def index
    @violences = Violence.all
  end

  # GET /violences/1
  # GET /violences/1.json
  def show
  end

  # GET /violences/new
  def new
    @violence = Violence.new
  end

  # GET /violences/1/edit
  def edit
  end

  # POST /violences
  # POST /violences.json
  def create
    @violence = Violence.new(violence_params)

    respond_to do |format|
      if @violence.save
        format.html { redirect_to @violence, notice: 'Violence was successfully created.' }
        format.json { render :show, status: :created, location: @violence }
      else
        format.html { render :new }
        format.json { render json: @violence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /violences/1
  # PATCH/PUT /violences/1.json
  def update
    respond_to do |format|
      if @violence.update(violence_params)
        format.html { redirect_to @violence, notice: 'Violence was successfully updated.' }
        format.json { render :show, status: :ok, location: @violence }
      else
        format.html { render :edit }
        format.json { render json: @violence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /violences/1
  # DELETE /violences/1.json
  def destroy
    @violence.destroy
    respond_to do |format|
      format.html { redirect_to violences_url, notice: 'Violence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_violence
      @violence = Violence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def violence_params
      params.require(:violence).permit(:name, :active)
    end
end
