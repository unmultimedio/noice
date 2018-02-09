require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @session = sessions(:one)
  end

  test "should get index" do
    get sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should create session" do
    assert_difference('Session.count') do
      post sessions_url, params: { session: { audio_file_url: @session.audio_file_url, equipment_data: @session.equipment_data, interface_data: @session.interface_data, mic_data: @session.mic_data, number_of_chats: @session.number_of_chats, status: @session.status } }
    end

    assert_redirected_to session_url(Session.last)
  end

  test "should show session" do
    get session_url(@session)
    assert_response :success
  end

  test "should get edit" do
    get edit_session_url(@session)
    assert_response :success
  end

  test "should update session" do
    patch session_url(@session), params: { session: { audio_file_url: @session.audio_file_url, equipment_data: @session.equipment_data, interface_data: @session.interface_data, mic_data: @session.mic_data, number_of_chats: @session.number_of_chats, status: @session.status } }
    assert_redirected_to session_url(@session)
  end

  test "should destroy session" do
    assert_difference('Session.count', -1) do
      delete session_url(@session)
    end

    assert_redirected_to sessions_url
  end
end
