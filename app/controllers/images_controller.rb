class ImagesController < ApplicationController

  def create
    @image = Image.new(image_params)
    @image.post_id = params[:post_id]
    if @image.save
      redirect_to post_path(params[:post_id])
    else
      render :new
    end
  end

private
  def image_params
    params.require(:image).permit(:postpicture, :title)
  end
end

