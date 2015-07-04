class SituationsController < ApplicationController
  before_action :set_situation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:create, :new]

  # GET /situations
  # GET /situations.json
  def index
    @situations = Situation.all
  end

  # GET /situations/1
  # GET /situations/1.json
  def show
    @choice_1 = (@situation.choice_1 && @situation.choice_1 != 0) ? @situation.choice_1 : "new?oid=#{@situation.id}&obutton=1"
    @choice_2 = (@situation.choice_2 && @situation.choice_2 != 0) ? @situation.choice_2 : "new?oid=#{@situation.id}&obutton=2"
    @choice_1_label = @situation.choice_1_label
    @choice_2_label = @situation.choice_2_label
  end

  # GET /situations/new
  def new
    @situations = Situation.all
    @situation = Situation.new
  end

  # GET /situations/1/edit
  def edit
    @situations = Situation.all
  end

  # POST /situations
  # POST /situations.json
  def create
    @situation = Situation.new(situation_params)
    @situations = Situation.all

    respond_to do |format|
      if @situation.save
        format.html { redirect_to '/'+@situation.id.to_s, notice: 'Situation was successfully created.' }
        format.json { render :show, status: :created, location: @situation }
        set_parent_choice(params[:oid], params[:obutton], @situation.id)
      else
        format.html { render :new }
        format.json { render json: @situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /situations/1
  # PATCH/PUT /situations/1.json
  def update
    @situations = Situation.all
    respond_to do |format|
      if @situation.update(situation_params)
        format.html { redirect_to @situation, notice: 'Situation was successfully updated.' }
        format.json { render :show, status: :ok, location: @situation }
      else
        format.html { render :edit }
        format.json { render json: @situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /situations/1
  # DELETE /situations/1.json
  def destroy
    situations = Situation.all
    unless situations.find_by(choice_1: @situation.id) or situations.find_by(choice_2: @situation.id)
      @situation.destroy
      respond_to do |format|
        format.html { redirect_to situations_url, notice: 'Situation was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to situations_url, notice: 'Cannot delete situation when a link to it exists!' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_situation
      @situation = Situation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def situation_params
      params.require(:situation).permit(:title, :sit_rep, :choice_1, :choice_1_label, :choice_2, :choice_2_label, :ending)
    end

    #
    def set_parent_choice(parent_id, choice_number, choice_id)
      @parent = Situation.find(parent_id)
      if choice_number == '1'
        @parent.choice_1 = choice_id
      elsif choice_number == '2'
        @parent.choice_2 = choice_id
      end
      @parent.save
    end

    def authenticate_admin!
      if current_user.nil?
        redirect_to '/'
        return
      end
      # check if current user is admin
      unless current_user.admin?
        # if current_user is not admin redirect to some route
        redirect_to '/'
      end
    end
end
