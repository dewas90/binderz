class DocumentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to documents_path
    else
      render :new
    end
  end

  def show
    @document = Document.find(params[:id])

  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])
    @document.update(document_params)
    redirect_to documents_path
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to documents_path
  end

  private

  def document_params
    params.require(:document).permit(:name, :text)
  end

end
