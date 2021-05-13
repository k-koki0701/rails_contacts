class ContentsController < ApplicationController
  def new
    @content = Content.new
  end
  def create
      @content = Content.new(content_params)
      if @content.save
        redirect_to new_content_path
      else
        render :new
      end

  end
  private
  def content_params
    params.require(:content).permit(:name,:email,:content)
  end
end
