require 'test_helper'

class ControlDePeliculasControllerTest < ActionController::TestCase
  setup do
    @control_de_pelicula = control_de_peliculas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:control_de_peliculas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create control_de_pelicula" do
    assert_difference('ControlDePelicula.count') do
      post :create, control_de_pelicula: { avaliacao: @control_de_pelicula.avaliacao, duracao: @control_de_pelicula.duracao, genero: @control_de_pelicula.genero, lancamento: @control_de_pelicula.lancamento, produtora: @control_de_pelicula.produtora, titulo: @control_de_pelicula.titulo }
    end

    assert_redirected_to control_de_pelicula_path(assigns(:control_de_pelicula))
  end

  test "should show control_de_pelicula" do
    get :show, id: @control_de_pelicula
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @control_de_pelicula
    assert_response :success
  end

  test "should update control_de_pelicula" do
    patch :update, id: @control_de_pelicula, control_de_pelicula: { avaliacao: @control_de_pelicula.avaliacao, duracao: @control_de_pelicula.duracao, genero: @control_de_pelicula.genero, lancamento: @control_de_pelicula.lancamento, produtora: @control_de_pelicula.produtora, titulo: @control_de_pelicula.titulo }
    assert_redirected_to control_de_pelicula_path(assigns(:control_de_pelicula))
  end

  test "should destroy control_de_pelicula" do
    assert_difference('ControlDePelicula.count', -1) do
      delete :destroy, id: @control_de_pelicula
    end

    assert_redirected_to control_de_peliculas_path
  end
end
