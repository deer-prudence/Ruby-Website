require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Emily Louden"
  end
  
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get work" do
    get static_pages_work_url
    assert_response :success
    assert_select "title", "#{@base_title} | Current Work"
  end
  
  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "#{@base_title} | Contact Me"
  end
  
end
