class DoadoresController < ApplicationController
  before_action :set_doadore, only: [:show, :edit, :update, :destroy]

  # GET /doadores
  # GET /doadores.json
  def index
    @doadores = Doadore.all
  end

  # GET /doadores/1
  # GET /doadores/1.json
  def show
  end

  # GET /doadores/new
  def new
    @doadore = Doadore.new
  end

  # GET /doadores/1/edit
  def edit
  end

  # POST /doadores
  # POST /doadores.json
  def create
    @doadore = Doadore.new(doadore_params)

    respond_to do |format|
      if @doadore.save
        format.html { redirect_to @doadore, notice: 'Doadore was successfully created.' }
        format.json { render :show, status: :created, location: @doadore }
      else
        format.html { render :new }
        format.json { render json: @doadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doadores/1
  # PATCH/PUT /doadores/1.json
  def update
    respond_to do |format|
      if @doadore.update(doadore_params)
        format.html { redirect_to @doadore, notice: 'Doadore was successfully updated.' }
        format.json { render :show, status: :ok, location: @doadore }
      else
        format.html { render :edit }
        format.json { render json: @doadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doadores/1
  # DELETE /doadores/1.json
  def destroy
    @doadore.destroy
    respond_to do |format|
      format.html { redirect_to doadores_url, notice: 'Doadore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doadore
      @doadore = Doadore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doadore_params
      params.require(:doadore).permit(:name, :email, :telefone, :tipo)
    end
end
