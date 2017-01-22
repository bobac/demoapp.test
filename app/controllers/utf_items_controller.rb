class UtfItemsController < ApplicationController
  before_action :set_utf_item, only: [:show, :edit, :update, :destroy]

  # GET /utf_items
  # GET /utf_items.json
  def index
    @utf_items = UtfItem.all
  end

  # GET /utf_items/1
  # GET /utf_items/1.json
  def show
  end

  # GET /utf_items/new
  def new
    @utf_item = UtfItem.new
  end

  # GET /utf_items/1/edit
  def edit
  end

  # POST /utf_items
  # POST /utf_items.json
  def create
    @utf_item = UtfItem.new(utf_item_params)

    respond_to do |format|
      if @utf_item.save
        format.html { redirect_to @utf_item, notice: 'Utf item was successfully created.' }
        format.json { render :show, status: :created, location: @utf_item }
      else
        format.html { render :new }
        format.json { render json: @utf_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utf_items/1
  # PATCH/PUT /utf_items/1.json
  def update
    respond_to do |format|
      if @utf_item.update(utf_item_params)
        format.html { redirect_to @utf_item, notice: 'Utf item was successfully updated.' }
        format.json { render :show, status: :ok, location: @utf_item }
      else
        format.html { render :edit }
        format.json { render json: @utf_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utf_items/1
  # DELETE /utf_items/1.json
  def destroy
    @utf_item.destroy
    respond_to do |format|
      format.html { redirect_to utf_items_url, notice: 'Utf item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utf_item
      @utf_item = UtfItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utf_item_params
      params.require(:utf_item).permit(:name, :description)
    end
end
