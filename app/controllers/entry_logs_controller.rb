class EntryLogsController < ApplicationController
  before_action :set_entry_log, only: [:show, :edit, :update, :destroy]

  # GET /entry_logs
  # GET /entry_logs.json
  def index
    @entry_logs = EntryLog.all
  end

  # GET /entry_logs/1
  # GET /entry_logs/1.json
  def show
  end

  # GET /entry_logs/new
  def new
    @entry_log = EntryLog.new
  end

  # GET /entry_logs/1/edit
  def edit
  end

  # POST /entry_logs
  # POST /entry_logs.json
  def create
    @entry_log = EntryLog.new(entry_log_params)

    respond_to do |format|
      if @entry_log.save
        format.html { redirect_to @entry_log, notice: 'Entry log was successfully created.' }
        format.json { render :show, status: :created, location: @entry_log }
      else
        format.html { render :new }
        format.json { render json: @entry_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_logs/1
  # PATCH/PUT /entry_logs/1.json
  def update
    respond_to do |format|
      if @entry_log.update(entry_log_params)
        format.html { redirect_to @entry_log, notice: 'Entry log was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry_log }
      else
        format.html { render :edit }
        format.json { render json: @entry_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_logs/1
  # DELETE /entry_logs/1.json
  def destroy
    @entry_log.destroy
    respond_to do |format|
      format.html { redirect_to entry_logs_url, notice: 'Entry log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_log
      @entry_log = EntryLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_log_params
      params.require(:entry_log).permit(:phone, :detail)
    end
end
