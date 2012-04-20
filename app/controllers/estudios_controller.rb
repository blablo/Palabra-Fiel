class EstudiosController < ApplicationController
  def show
    @estudio = Estudio.find(params[:id])
  end

  def new
    @estudio = Estudio.new
  end
  

  def create
    @estudio = Estudio.new(params[:estudio])

    respond_to do |format|
      if @estudio.save
        format.html { redirect_to(@estudio, :notice => 'Estudio was successfully created.') }
        format.xml  { render :xml => @estudio, :status => :created, :location => @estudio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @estudio.errors, :status => :unprocessable_entity }
      end
    end
  end

end
