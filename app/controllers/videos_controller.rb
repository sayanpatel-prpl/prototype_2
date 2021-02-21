class VideosController < ApplicationController

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)

    # respond_to do |format|
    #   if @video.save
    #     format.html { redirect_to @video, notice: "Video was successfully created." }
    #     format.json { render :show, status: :created, location: @video }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @video.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def video_params
      params.require(:video).permit(:file)
    end
end
