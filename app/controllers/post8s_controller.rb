class Post8sController < ApplicationController
  before_action :set_post8, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
   # GET /post8s
  # GET /post8s.json
  def index
    @post8s = Post8.all
  end

  # GET /post8s/1
  # GET /post8s/1.json
  def show
  end

  # GET /post8s/new
  def new
    @post8 = Post8.new
  end

  # GET /post8s/1/edit
  def edit
  end

  # POST /post8s
  # POST /post8s.json
  def create
    @post8 = Post8.new(post8_params)

    respond_to do |format|
      if @post8.save
        format.html { redirect_to @post8, notice: 'Post8 was successfully created.' }
        format.json { render :show, status: :created, location: @post8 }
      else
        format.html { render :new }
        format.json { render json: @post8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post8s/1
  # PATCH/PUT /post8s/1.json
  def update
    respond_to do |format|
      if @post8.update(post8_params)
        format.html { redirect_to @post8, notice: 'Post8 was successfully updated.' }
        format.json { render :show, status: :ok, location: @post8 }
      else
        format.html { render :edit }
        format.json { render json: @post8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post8s/1
  # DELETE /post8s/1.json
  def destroy
    @post8.destroy
    respond_to do |format|
      format.html { redirect_to post8s_url, notice: 'Post8 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post8
      @post8 = Post8.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post8_params
        params[:post8][:user_id] = current_user.id
      params.require(:post8).permit(:title, :content, :user_id)
    end
    
    
end
