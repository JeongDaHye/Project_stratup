class Postnew4sController < ApplicationController
  before_action :set_postnew4, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /postnew4s
  # GET /postnew4s.json
  def index
    @postnew4s = Postnew4.all
  end

  # GET /postnew4s/1
  # GET /postnew4s/1.json
  def show
  end

  # GET /postnew4s/new
  def new
    @postnew4 = Postnew4.new
  end

  # GET /postnew4s/1/edit
  def edit
  end

  # POST /postnew4s
  # POST /postnew4s.json
  def create
    @postnew4 = Postnew4.new(postnew4_params)

    respond_to do |format|
      if @postnew4.save
        format.html { redirect_to @postnew4, notice: 'Postnew4 was successfully created.' }
        format.json { render :show, status: :created, location: @postnew4 }
      else
        format.html { render :new }
        format.json { render json: @postnew4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postnew4s/1
  # PATCH/PUT /postnew4s/1.json
  def update
    respond_to do |format|
      if @postnew4.update(postnew4_params)
        format.html { redirect_to @postnew4, notice: 'Postnew4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @postnew4 }
      else
        format.html { render :edit }
        format.json { render json: @postnew4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postnew4s/1
  # DELETE /postnew4s/1.json
  def destroy
    @postnew4.destroy
    respond_to do |format|
      format.html { redirect_to postnew4s_url, notice: 'Postnew4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postnew4
      @postnew4 = Postnew4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postnew4_params
       params[:postnew4][:user_id] = current_user.id
      params.require(:postnew4).permit(:title, :content, :user_id)
    end
    
end
