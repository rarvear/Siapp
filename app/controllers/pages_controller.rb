class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:showsall]
  def home
    
  end

  def formin
  	Contactform.create!(
  	  name: params[:name],
  	  email: params[:email],
  	  phone: params[:phone],
  	  sindicato: params[:sindicato],
  	  cargo: params[:cargo],
  	  mensaje: params[:mensaje]
  	  )
    respond_to do |format|
    format.html { redirect_to root_path, notice: 'Gracias! Hemos recibido tu mensaje' }
  end
  end

  def showsall
    @co=Contactform.all
  end
  
  def blog
    @blogger = Blogger.all
    @blogpost = params[:blog]
  end

  def postblog

    @blogger = Blogger.find(params[:format])
  end


end
