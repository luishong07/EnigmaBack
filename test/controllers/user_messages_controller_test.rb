require 'test_helper'

class UserMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_message = user_messages(:one)
  end

  test "should get index" do
    get user_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_user_message_url
    assert_response :success
  end

  test "should create user_message" do
    assert_difference('UserMessage.count') do
      post user_messages_url, params: { user_message: {  } }
    end

    assert_redirected_to user_message_url(UserMessage.last)
  end

  test "should show user_message" do
    get user_message_url(@user_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_message_url(@user_message)
    assert_response :success
  end

  test "should update user_message" do
    patch user_message_url(@user_message), params: { user_message: {  } }
    assert_redirected_to user_message_url(@user_message)
  end

  test "should destroy user_message" do
    assert_difference('UserMessage.count', -1) do
      delete user_message_url(@user_message)
    end

    assert_redirected_to user_messages_url
  end
end
