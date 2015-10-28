require 'test_helper'

class AlumnoCursosControllerTest < ActionController::TestCase
  setup do
    @alumno_curso = alumno_cursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alumno_cursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alumno_curso" do
    assert_difference('AlumnoCurso.count') do
      post :create, alumno_curso: { alumno_id: @alumno_curso.alumno_id, curso_id: @alumno_curso.curso_id }
    end

    assert_redirected_to alumno_curso_path(assigns(:alumno_curso))
  end

  test "should show alumno_curso" do
    get :show, id: @alumno_curso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alumno_curso
    assert_response :success
  end

  test "should update alumno_curso" do
    patch :update, id: @alumno_curso, alumno_curso: { alumno_id: @alumno_curso.alumno_id, curso_id: @alumno_curso.curso_id }
    assert_redirected_to alumno_curso_path(assigns(:alumno_curso))
  end

  test "should destroy alumno_curso" do
    assert_difference('AlumnoCurso.count', -1) do
      delete :destroy, id: @alumno_curso
    end

    assert_redirected_to alumno_cursos_path
  end
end
