class AttachmentsController < ApplicationController
  #skip_before_filter :verify_authenticity_token  #open when skip csrf token verify
  def index
    @attachment = Attachment.new
  end
  
  def show
    @attachment = Attachment.find(1)
  end
  
  def upload
    @attachment = Attachment.new
    @attachment.file = params[:file]
    @attachment.save
    
    respond_to do |format|
        format.json { render :json => { status: 'OK', link: @attachment.file.url}}
    end
  end

  def create
    @attachment = Attachment.create(attachment_params)
    render :show
  end

  def destroy 
    file = Attachment.find(params[:id]) 
    file.destroy head :ok 
  rescue ActiveRecord::RecordNotFound 
    head :no_content 
  end 
  
  private
    def attachment_params
      params.require(:attachment).permit(:file)
    end
end