class Postnew2sController < ApplicationController
  before_action :set_postnew2, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /postnew2s
  # GET /postnew2s.json
  def index
    @postnew2s = Postnew2.all
  end

  # GET /postnew2s/1
  # GET /postnew2s/1.json
  def show
  end

  # GET /postnew2s/new
  def new
    @postnew2 = Postnew2.new
  end

  # GET /postnew2s/1/edit
  def edit
  end

  # POST /postnew2s
  # POST /postnew2s.json
  def create
    @postnew2 = Postnew2.new(postnew2_params)

    respond_to do |format|
      if @postnew2.save
        format.html { redirect_to @postnew2, notice: 'Postnew2 was successfully created.' }
        format.json { render :show, status: :created, location: @postnew2 }
      else
        format.html { render :new }
        format.json { render json: @postnew2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postnew2s/1
  # PATCH/PUT /postnew2s/1.json
  def update
    respond_to do |format|
      if @postnew2.update(postnew2_params)
        format.html { redirect_to @postnew2, notice: 'Postnew2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @postnew2 }
      else
        format.html { render :edit }
        format.json { render json: @postnew2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postnew2s/1
  # DELETE /postnew2s/1.json
  def destroy
    @postnew2.destroy
    respond_to do |format|
      format.html { redirect_to postnew2s_url, notice: 'Postnew2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postnew2
      @postnew2 = Postnew2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postnew2_params
       params[:postnew2][:user_id] = current_user.id
      params.require(:postnew2).permit(:title, :content, :user_id)
    end
    
end
