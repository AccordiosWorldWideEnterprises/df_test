class SampleImagesController < ApplicationController
  before_action :set_sample_image, only: [:show, :edit, :update, :destroy]

  # GET /sample_images
  # GET /sample_images.json
  def index
    @sample_images = SampleImage.all
  end

  # GET /sample_images/1
  # GET /sample_images/1.json
  def show
  end

  # GET /sample_images/new
  def new
    @sample_image = SampleImage.new
  end

  # GET /sample_images/1/edit
  def edit
  end

  # POST /sample_images
  # POST /sample_images.json
  def create
    @sample_image = SampleImage.new(sample_image_params)

    respond_to do |format|
      if @sample_image.save
        format.html { redirect_to @sample_image, notice: 'Sample image was successfully created.' }
        format.json { render :show, status: :created, location: @sample_image }
      else
        format.html { render :new }
        format.json { render json: @sample_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_images/1
  # PATCH/PUT /sample_images/1.json
  def update
    respond_to do |format|
      if @sample_image.update(sample_image_params)
        format.html { redirect_to @sample_image, notice: 'Sample image was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_image }
      else
        format.html { render :edit }
        format.json { render json: @sample_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_images/1
  # DELETE /sample_images/1.json
  def destroy
    @sample_image.destroy
    respond_to do |format|
      format.html { redirect_to sample_images_url, notice: 'Sample image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_image
      @sample_image = SampleImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_image_params
      params.require(:sample_image).permit(:name, :file)
    end
end
