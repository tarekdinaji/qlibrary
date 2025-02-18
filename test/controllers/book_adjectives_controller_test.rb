require "test_helper"

class BookAdjectivesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book_adjectives_index_url
    assert_response :success
  end

  test "should get show" do
    get book_adjectives_show_url
    assert_response :success
  end

  test "should get new" do
    get book_adjectives_new_url
    assert_response :success
  end

  test "should get create" do
    get book_adjectives_create_url
    assert_response :success
  end

  test "should get edit" do
    get book_adjectives_edit_url
    assert_response :success
  end

  test "should get update" do
    get book_adjectives_update_url
    assert_response :success
  end

  test "should get destroy" do
    get book_adjectives_destroy_url
    assert_response :success
  end
end
