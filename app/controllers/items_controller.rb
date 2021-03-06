class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @pagy, @records = pagy(Item.all, items: 60)

    respond_to do |format|
      format.html
      format.json {
        render json: { entries: render_to_string(partial: "posts", formats: [:html]), pagination: view_context.pagy_nav(@pagy) }
      }
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  def splited

    def splited_datas_by_column_spliter_from_item()
      result = {}
      Item.all.each do |single_item|
        unless result.has_key?(single_item.spliter)
          result[single_item.spliter] = [single_item]
        else
          result[single_item.spliter].push(single_item)
        end
      end
      result
    end

    @data = splited_datas_by_column_spliter_from_item

  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def item_params
    params.require(:item).permit(:name, :email, :age)
  end
end
