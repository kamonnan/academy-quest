require "test_helper"

class QuestItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quest_item = quest_items(:one)
  end

  test "should get index" do
    get quest_items_url
    assert_response :success
  end

  test "should get new" do
    get new_quest_item_url
    assert_response :success
  end

  test "should create quest_item" do
    assert_difference("QuestItem.count") do
      post quest_items_url, params: { quest_item: { completed: @quest_item.completed, content: @quest_item.content } }
    end

    assert_redirected_to quest_item_url(QuestItem.last)
  end

  test "should show quest_item" do
    get quest_item_url(@quest_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_quest_item_url(@quest_item)
    assert_response :success
  end

  test "should update quest_item" do
    patch quest_item_url(@quest_item), params: { quest_item: { completed: @quest_item.completed, content: @quest_item.content } }
    assert_redirected_to quest_item_url(@quest_item)
  end

  test "should destroy quest_item" do
    assert_difference("QuestItem.count", -1) do
      delete quest_item_url(@quest_item)
    end

    assert_redirected_to quest_items_url
  end
end
