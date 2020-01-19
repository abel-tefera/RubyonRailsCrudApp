class MusikasController < ApplicationController
  before_action :set_musika, only: [:show, :edit, :update, :destroy]

  # GET /musikas
  # GET /musikas.json
  def index
    @musikas = Musika.all
  end

  # GET /musikas/1
  # GET /musikas/1.json
  def show
  end

  # GET /musikas/new
  def new
    @musika = Musika.new
  end

  # GET /musikas/1/edit
  def edit
  end

  # POST /musikas
  # POST /musikas.json
  def create
    @musika = Musika.new(musika_params)

    respond_to do |format|
      if @musika.save
        format.html { redirect_to @musika, notice: 'Musika was successfully created.' }
        format.json { render :show, status: :created, location: @musika }
      else
        format.html { render :new }
        format.json { render json: @musika.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musikas/1
  # PATCH/PUT /musikas/1.json
  def update
    respond_to do |format|
      if @musika.update(musika_params)
        format.html { redirect_to @musika, notice: 'Musika was successfully updated.' }
        format.json { render :show, status: :ok, location: @musika }
      else
        format.html { render :edit }
        format.json { render json: @musika.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musikas/1
  # DELETE /musikas/1.json
  def destroy
    @musika.destroy
    respond_to do |format|
      format.html { redirect_to musikas_url, notice: 'Musika was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musika
      @musika = Musika.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musika_params
      params.require(:musika).permit(:title, :singer)
    end
end
