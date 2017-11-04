require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Travel for knowledge"
  end

  test "should get home" do
    get static_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"

  end

  test "should get help" do
    get static_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"

  end
  test "should get about" do
  	get static_about_url
  	assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
end
