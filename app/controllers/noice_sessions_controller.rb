class NoiceSessionsController < ApplicationController
  before_action :set_noice_session, only: [:show, :edit, :update, :destroy]

  # GET /noice_sessions
  # GET /noice_sessions.json
  def index
    @noice_sessions = NoiceSession.all
  end

  # GET /noice_sessions/1
  # GET /noice_sessions/1.json
  def show
  end

  # GET /noice_sessions/new
  def new
    @noice_session = NoiceSession.new
  end

  # GET /noice_sessions/1/edit
  def edit
  end

  # POST /noice_sessions
  # POST /noice_sessions.json
  def create
    @noice_session = NoiceSession.new(noice_session_params)
    @noice_session.open = true
    @noice_session.status = :waiting_diagnostics
    @noice_session.user_id = current_user.id
    if @noice_session.save
      redirect_to @noice_session, notice: 'NoiceSession was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /noice_sessions/1
  # PATCH/PUT /noice_sessions/1.json
  def update
    if @noice_session.update(noice_session_params)
      redirect_to @noice_session, notice: 'NoiceSession was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /noice_sessions/1
  # DELETE /noice_sessions/1.json
  def destroy
    @noice_session.destroy
    redirect_to noice_sessions_url, notice: 'NoiceSession was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noice_session
      @noice_session = NoiceSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noice_session_params
      params.require(:noice_session).permit(:audio_file_url, :mic_data, :interface_data, :equipment_data)
    end
end
