class MeetingsAppsController < ApplicationController
  before_action :set_meetings_app, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[ index show ]
  before_action :correct_user, only: %i[ edit update destroy ]

  # GET /meetings_apps or /meetings_apps.json
  def index
    @meetings_apps = MeetingsApp.all
  end

  # GET /meetings_apps/1 or /meetings_apps/1.json
  def show
  end

  # GET /meetings_apps/new
  def new
    @meetings_app = current_user.meetings_app.build
  end

  # GET /meetings_apps/1/edit
  def edit
  end

  # POST /meetings_apps or /meetings_apps.json
  def create
    @meetings_app = current_user.meetings_app.build(meetings_app_params)

    respond_to do |format|
      if @meetings_app.save
        format.html { redirect_to @meetings_app, notice: "Meetings app was successfully created." }
        format.json { render :show, status: :created, location: @meetings_app }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meetings_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetings_apps/1 or /meetings_apps/1.json
  def update
    respond_to do |format|
      if @meetings_app.update(meetings_app_params)
        format.html { redirect_to @meetings_app, notice: "Meetings app was successfully updated." }
        format.json { render :show, status: :ok, location: @meetings_app }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meetings_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings_apps/1 or /meetings_apps/1.json
  def destroy
    @meetings_app.destroy
    respond_to do |format|
      format.html { redirect_to meetings_apps_url, notice: "Meetings app was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @meetings_app = current_user.meetings_app.find_by(id: params[:id])
    redirect_to meetings_apps_path, notice: 'Sem autorização para editar esta reunião' if@meetings_app.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meetings_app
      @meetings_app = MeetingsApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meetings_app_params
      params.require(:meetings_app).permit(:title, :description, :start_time, :end_time, :user_id)
    end
end
