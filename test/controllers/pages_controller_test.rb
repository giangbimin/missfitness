require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get schedule" do
    get pages_schedule_url
    assert_response :success
  end

  test "should get franchising" do
    get pages_franchising_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get become-a-trainer" do
    get pages_become-a-trainer_url
    assert_response :success
  end

end
