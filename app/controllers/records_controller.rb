class RecordsController < ApplicationController
  before_action :set_record, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /records or /records.json
  def index
    @records = Record.order(params[:sort])
  end

  # GET /records/1 or /records/1.json
  def show
  end

  # GET /records/new
  def new
    #@record = Record.new
    @record = current_user.records.build
  end

  # GET /records/1/edit
  def edit
  end

  # POST /records or /records.json
  def create
    #@record = Record.new(record_params)
    @record = current_user.records.build(record_params)

    respond_to do |format|
      if @record.save
        format.html { redirect_to @record, notice: "Record was successfully created." }
        format.json { render :show, status: :created, location: @record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /records/1 or /records/1.json
  def update
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to @record, notice: "Record was successfully updated." }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /records/1 or /records/1.json
  def destroy
    @record.destroy
    respond_to do |format|
      format.html { redirect_to records_url, notice: "Record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @record = current_user.records.find_by(id: params[:id])
    redirect_to records_path, notice: "Sorry! This is not your Record" if @record.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def record_params
      params.require(:record).permit(:rec_id, :minutes, :notes, :date, :user_id, :activity_id, :share)
    end
end
