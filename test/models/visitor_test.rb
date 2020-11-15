require 'test_helper'

class VisitorTest < ActiveSupport::TestCase
  def setup
    @valid_visitor = Visitor.new(name: "Donatella Versace", email: "ecl.damoose@gmail.com", message: "Meow!")
  end
  
  test "user should be valid" do
    assert @valid_visitor.valid?
  end
  
  test "non-empty name should be present" do
    @no_name = Visitor.new(name: "   ")
    assert_not @no_name.valid?
  end
  
  test "non-emptpy email should be present" do
    @no_email = Visitor.new(name: "Test User", email: "  ")
    assert_not @no_email.valid?
  end
  
  test "user name should not be too long" do
    @long_name = Visitor.new(name: "A" * 100)
    assert_not @long_name.valid?
  end
  
  test "user email should not be too long" do
    @long_email = Visitor.new(email: "AA" * 150)
    assert_not @long_email.valid?
  end
end
