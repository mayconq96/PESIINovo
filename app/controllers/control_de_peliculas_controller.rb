class ControlDePeliculasController < ApplicationController
  before_action :set_control_de_pelicula, only: [:show, :edit, :update, :destroy]

  # GET /control_de_peliculas
  # GET /control_de_peliculas.json
  def index
    @control_de_peliculas = ControlDePelicula.all
  end

  # GET /control_de_peliculas/1
  # GET /control_de_peliculas/1.json
  def show
  end

  # GET /control_de_peliculas/new
  def new
    @control_de_pelicula = ControlDePelicula.new
  end

  # GET /control_de_peliculas/1/edit
  def edit
  end

  # POST /control_de_peliculas
  # POST /control_de_peliculas.json
  def create
    @control_de_pelicula = ControlDePelicula.new(control_de_pelicula_params)

    respond_to do |format|
      if @control_de_pelicula.save
        format.html { redirect_to @control_de_pelicula, notice: 'Control de pelicula was successfully created.' }
        format.json { render :show, status: :created, location: @control_de_pelicula }
      else
        format.html { render :new }
        format.json { render json: @control_de_pelicula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /control_de_peliculas/1
  # PATCH/PUT /control_de_peliculas/1.json
  def update
    respond_to do |format|
      if @control_de_pelicula.update(control_de_pelicula_params)
        format.html { redirect_to @control_de_pelicula, notice: 'Control de pelicula was successfully updated.' }
        format.json { render :show, status: :ok, location: @control_de_pelicula }
      else
        format.html { render :edit }
        format.json { render json: @control_de_pelicula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /control_de_peliculas/1
  # DELETE /control_de_peliculas/1.json
  def destroy
    @control_de_pelicula.destroy
    respond_to do |format|
      format.html { redirect_to control_de_peliculas_url, notice: 'Control de pelicula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_control_de_pelicula
      @control_de_pelicula = ControlDePelicula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def control_de_pelicula_params
      params.require(:control_de_pelicula).permit(:titulo, :lancamento, :genero, :produtora, :duracao, :avaliacao)
    end
end
