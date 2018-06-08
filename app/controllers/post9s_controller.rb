class Post9sController < ApplicationController
  before_action :set_post9, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
     # GET /post9s
  # GET /post9s.json
  def index
    @post9s = Post9.all
  end

  # GET /post9s/1
  # GET /post9s/1.json
  def show
  end

  # GET /post9s/new
  def new
    @post9 = Post9.new
  end

  # GET /post9s/1/edit
  def edit
  end

  # POST /post9s
  # POST /post9s.json
  def create
    @post9 = Post9.new(post9_params)

    respond_to do |format|
      if @post9.save
        format.html { redirect_to @post9, notice: 'Post9 was successfully created.' }
        format.json { render :show, status: :created, location: @post9 }
      else
        format.html { render :new }
        format.json { render json: @post9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post9s/1
  # PATCH/PUT /post9s/1.json
  def update
    respond_to do |format|
      if @post9.update(post9_params)
        format.html { redirect_to @post9, notice: 'Post9 was successfully updated.' }
        format.json { render :show, status: :ok, location: @post9 }
      else
        format.html { render :edit }
        format.json { render json: @post9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post9s/1
  # DELETE /post9s/1.json
  def destroy
    @post9.destroy
    respond_to do |format|
      format.html { redirect_to post9s_url, notice: 'Post9 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post9
      @post9 = Post9.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post9_params
       params[:post9][:user_id] = current_user.id
      params.require(:post9).permit(:title, :content, :user_id)
    end
  
end
