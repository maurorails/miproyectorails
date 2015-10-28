class AlumnoCursosController < ApplicationController
  before_action :set_alumno_curso, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @alumno_cursos = AlumnoCurso.all
    respond_with(@alumno_cursos)
  end

  def show
    respond_with(@alumno_curso)
  end

  def new
    @alumno_curso = AlumnoCurso.new
    respond_with(@alumno_curso)
  end

  def edit
  end

  def create
    @alumno_curso = AlumnoCurso.new(alumno_curso_params)
    @alumno_curso.save
    respond_with(@alumno_curso)
  end

  def update
    @alumno_curso.update(alumno_curso_params)
    respond_with(@alumno_curso)
  end

  def destroy
    @alumno_curso.destroy
    respond_with(@alumno_curso)
  end

  private
    def set_alumno_curso
      @alumno_curso = AlumnoCurso.find(params[:id])
    end

    def alumno_curso_params
      params.require(:alumno_curso).permit(:alumno_id, :curso_id)
    end
end
