require "application_system_test_case"

class QuestItemsTest < ApplicationSystemTestCase
  setup do
    @quest_item = quest_items(:one)
  end

  test "visiting the index" do
    visit quest_items_url
    assert_selector "h1", text: "Quest items"
  end

  test "should create quest item" do
    visit quest_items_url
    click_on "New quest item"

    check "Completed" if @quest_item.completed
    fill_in "Content", with: @quest_item.content
    click_on "Create Quest item"

    assert_text "Quest item was successfully created"
    click_on "Back"
  end

  test "should update Quest item" do
    visit quest_item_url(@quest_item)
    click_on "Edit this quest item", match: :first

    check "Completed" if @quest_item.completed
    fill_in "Content", with: @quest_item.content
    click_on "Update Quest item"

    assert_text "Quest item was successfully updated"
    click_on "Back"
  end

  test "should destroy Quest item" do
    visit quest_item_url(@quest_item)
    accept_confirm { click_on "Destroy this quest item", match: :first }

    assert_text "Quest item was successfully destroyed"
  end
end
