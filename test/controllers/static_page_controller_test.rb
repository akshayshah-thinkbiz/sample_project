require 'test_helper'

class StaticPageControllerTest < ActionDispatch::IntegrationTest
	
	def setup
		@base_title = "Ruby on Rails Tutorial Sample App"
	end
  test "should get home" do
    get FILL_IN
    assert_response :FILL_IN
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get static_page_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should het about" do
  	get static_page_about_url
  	assert_response :success
  	assert_select "title", "About | #{base_title}"
  end



end
