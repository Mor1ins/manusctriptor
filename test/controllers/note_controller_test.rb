require 'test_helper'

class NoteControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get note_all_url
    assert_response :success
  end

  test "should get create" do
    get note_create_url
    assert_response :success
  end

  test "should get delete" do
    get note_delete_url
    assert_response :success
  end

end
