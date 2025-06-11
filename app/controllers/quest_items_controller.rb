class QuestItemsController < ApplicationController
  before_action :set_quest_item, only: %i[ show edit update destroy ]

  # GET /quest_items or /quest_items.json
  def index
    @quest_items = QuestItem.all
  end

  # GET /quest_items/1 or /quest_items/1.json
  def show
  end

  # GET /quest_items/new
  def new
    @quest_item = QuestItem.new
  end

  # GET /quest_items/1/edit
  def edit
  end

  # POST /quest_items or /quest_items.json
  def create
    @quest_item = QuestItem.new(quest_item_params)

    respond_to do |format|
      if @quest_item.save
        format.html { redirect_to @quest_item, notice: "Quest item was successfully created." }
        format.json { render :show, status: :created, location: @quest_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quest_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quest_items/1 or /quest_items/1.json
  def update
    respond_to do |format|
      if @quest_item.update(quest_item_params)
        format.html { redirect_to @quest_item, notice: "Quest item was successfully updated." }
        format.json { render :show, status: :ok, location: @quest_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quest_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quest_items/1 or /quest_items/1.json
  def destroy
    @quest_item.destroy!

    respond_to do |format|
      format.html { redirect_to quest_items_path, status: :see_other, notice: "Quest item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quest_item
      @quest_item = QuestItem.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def quest_item_params
      params.expect(quest_item: [ :content, :completed ])
    end
end
