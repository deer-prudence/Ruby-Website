require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Emily Louden"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get work" do
    get work_path
    assert_response :success
    assert_select "title", "#{@base_title} | Current Work"
  end
  
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "#{@base_title} | Contact Me"
  end
  
  test "should get donatella" do
    get donatella_path
    assert_response :success
    assert_select "title", "#{@base_title} | My Cat"
  end
  
end
