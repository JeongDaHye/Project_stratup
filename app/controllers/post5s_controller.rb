class Post5sController < ApplicationController
  before_action :set_post5, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /post5s
  # GET /post5s.json
  def index
    @post5s = Post5.all
  end

  # GET /post5s/1
  # GET /post5s/1.json
  def show
  end

  # GET /post5s/new
  def new
    @post5 = Post5.new
  end

  # GET /post5s/1/edit
  def edit
  end

  # POST /post5s
  # POST /post5s.json
  def create
    @post5 = Post5.new(post5_params)

    respond_to do |format|
      if @post5.save
        format.html { redirect_to @post5, notice: 'Post5 was successfully created.' }
        format.json { render :show, status: :created, location: @post5 }
      else
        format.html { render :new }
        format.json { render json: @post5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post5s/1
  # PATCH/PUT /post5s/1.json
  def update
    respond_to do |format|
      if @post5.update(post5_params)
        format.html { redirect_to @post5, notice: 'Post5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @post5 }
      else
        format.html { render :edit }
        format.json { render json: @post5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post5s/1
  # DELETE /post5s/1.json
  def destroy
    @post5.destroy
    respond_to do |format|
      format.html { redirect_to post5s_url, notice: 'Post5 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post5
      @post5 = Post5.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post5_params
       params[:post5][:user_id] = current_user.id
      params.require(:post5).permit(:title, :content, :user_id)
    end
   
end
