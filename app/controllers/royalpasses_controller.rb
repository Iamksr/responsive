class RoyalpassesController < ApplicationController
  before_action :set_royalpass, only: [:show, :edit, :update, :destroy]

  # GET /royalpasses
  # GET /royalpasses.json
  def index
    @royalpasses = Royalpass.all
  end

  # GET /royalpasses/1
  # GET /royalpasses/1.json
  def show
  end
 def video
 end
  # GET /royalpasses/new
  def new
    @royalpass = Royalpass.new
  end

  # GET /royalpasses/1/edit
  def edit
  end

  # POST /royalpasses
  # POST /royalpasses.json
  def create
    @royalpass = Royalpass.new(royalpass_params)

    respond_to do |format|
      if @royalpass.save
        format.html { redirect_to @royalpass, notice: 'Royalpass was successfully created.' }
        format.json { render :show, status: :created, location: @royalpass }
      else
        format.html { render :new }
        format.json { render json: @royalpass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /royalpasses/1
  # PATCH/PUT /royalpasses/1.json
  def update
    respond_to do |format|
      if @royalpass.update(royalpass_params)
        format.html { redirect_to @royalpass, notice: 'Royalpass was successfully updated.' }
        format.json { render :show, status: :ok, location: @royalpass }
      else
        format.html { render :edit }
        format.json { render json: @royalpass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /royalpasses/1
  # DELETE /royalpasses/1.json
  def destroy
    @royalpass.destroy
    respond_to do |format|
      format.html { redirect_to royalpasses_url, notice: 'Royalpass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_royalpass
      @royalpass = Royalpass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def royalpass_params
      params.require(:royalpass).permit(:name, :rp, :pts, :rnk)
    end
end
