class Post7sController < ApplicationController
  before_action :set_post7, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /post7s
  # GET /post7s.json
  def index
    @post7s = Post7.all
  end

  # GET /post7s/1
  # GET /post7s/1.json
  def show
  end

  # GET /post7s/new
  def new
    @post7 = Post7.new
  end

  # GET /post7s/1/edit
  def edit
  end

  # POST /post7s
  # POST /post7s.json
  def create
    @post7 = Post7.new(post7_params)

    respond_to do |format|
      if @post7.save
        format.html { redirect_to @post7, notice: 'Post7 was successfully created.' }
        format.json { render :show, status: :created, location: @post7 }
      else
        format.html { render :new }
        format.json { render json: @post7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post7s/1
  # PATCH/PUT /post7s/1.json
  def update
    respond_to do |format|
      if @post7.update(post7_params)
        format.html { redirect_to @post7, notice: 'Post7 was successfully updated.' }
        format.json { render :show, status: :ok, location: @post7 }
      else
        format.html { render :edit }
        format.json { render json: @post7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post7s/1
  # DELETE /post7s/1.json
  def destroy
    @post7.destroy
    respond_to do |format|
      format.html { redirect_to post7s_url, notice: 'Post7 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post7
      @post7 = Post7.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post7_params
       params[:post7][:user_id] = current_user.id
      params.require(:post7).permit(:title, :content, :user_id)
    end
    
   
end
