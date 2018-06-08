class Post6sController < ApplicationController
  before_action :set_post6, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
 
  # GET /post6s
  # GET /post6s.json
  def index
    @post6s = Post6.all
  end

  # GET /post6s/1
  # GET /post6s/1.json
  def show
  end

  # GET /post6s/new
  def new
    @post6 = Post6.new
  end

  # GET /post6s/1/edit
  def edit
  end

  # POST /post6s
  # POST /post6s.json
  def create
    @post6 = Post6.new(post6_params)

    respond_to do |format|
      if @post6.save
        format.html { redirect_to @post6, notice: 'Post6 was successfully created.' }
        format.json { render :show, status: :created, location: @post6 }
      else
        format.html { render :new }
        format.json { render json: @post6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post6s/1
  # PATCH/PUT /post6s/1.json
  def update
    respond_to do |format|
      if @post6.update(post6_params)
        format.html { redirect_to @post6, notice: 'Post6 was successfully updated.' }
        format.json { render :show, status: :ok, location: @post6 }
      else
        format.html { render :edit }
        format.json { render json: @post6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post6s/1
  # DELETE /post6s/1.json
  def destroy
    @post6.destroy
    respond_to do |format|
      format.html { redirect_to post6s_url, notice: 'Post6 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post6
      @post6 = Post6.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post6_params
      params[:post6][:user_id] = current_user.id
      params.require(:post6).permit(:title, :content, :user_id)
    end
    
   
end
