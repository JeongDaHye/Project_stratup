class Postnew3sController < ApplicationController
  before_action :set_postnew3, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
   # GET /postnew3s
  # GET /postnew3s.json
  def index
    @postnew3s = Postnew3.all
  end

  # GET /postnew3s/1
  # GET /postnew3s/1.json
  def show
  end

  # GET /postnew3s/new
  def new
    @postnew3 = Postnew3.new
  end

  # GET /postnew3s/1/edit
  def edit
  end

  # POST /postnew3s
  # POST /postnew3s.json
  def create
    @postnew3 = Postnew3.new(postnew3_params)

    respond_to do |format|
      if @postnew3.save
        format.html { redirect_to @postnew3, notice: 'Postnew3 was successfully created.' }
        format.json { render :show, status: :created, location: @postnew3 }
      else
        format.html { render :new }
        format.json { render json: @postnew3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postnew3s/1
  # PATCH/PUT /postnew3s/1.json
  def update
    respond_to do |format|
      if @postnew3.update(postnew3_params)
        format.html { redirect_to @postnew3, notice: 'Postnew3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @postnew3 }
      else
        format.html { render :edit }
        format.json { render json: @postnew3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postnew3s/1
  # DELETE /postnew3s/1.json
  def destroy
    @postnew3.destroy
    respond_to do |format|
      format.html { redirect_to postnew3s_url, notice: 'Postnew3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postnew3
      @postnew3 = Postnew3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postnew3_params
      params[:postnew3][:user_id] = current_user.id
      params.require(:postnew3).permit(:title, :content, :user_id)
    end
   
end
