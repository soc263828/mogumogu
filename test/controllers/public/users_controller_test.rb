require "test_helper"

class Public::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_users_edit_url
    assert_response :success
  end

  test "should get quit" do
    get public_users_quit_url
    assert_response :success
  end

  test "should get favorites" do
    get public_users_favorites_url
    assert_response :success
  end

  test "should get bookmarks" do
    get public_users_bookmarks_url
    assert_response :success
  end
end
