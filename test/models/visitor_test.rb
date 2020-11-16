require 'test_helper'

class VisitorTest < ActiveSupport::TestCase
  def setup
    @valid_visitor = Visitor.new(name: "Donatella Versace", email: "ecl.damoose@gmail.com", message: "Meow!")
    @no_name = Visitor.new(name: "   ")
    @no_email = Visitor.new(name: "Test User", email: "  ")
    @long_name = Visitor.new(name: "A" * 100)
    @long_email = Visitor.new(email: "AA" * 150)
  end
  
  test "user should be valid" do
    assert @valid_visitor.valid?
  end
  
  test "non-empty name should be present" do
    assert_not @no_name.valid?
  end
  
  test "non-emptpy email should be present" do
    assert_not @no_email.valid?
  end
  
  test "user name should not be too long" do
    assert_not @long_name.valid?
  end
  
  test "user email should not be too long" do
    assert_not @long_email.valid?
  end
  
  test "email should not already exist in database" do
    duplicate_visitor = @valid_visitor.dup
    duplicate_visitor.email = @valid_visitor.email.upcase
    @valid_visitor.save
    assert_not duplicate_visitor.valid?
  end
  
  test "email should be saved as lowercase" do
    crazy_email = "candy@gmail.com"
    @valid_visitor.email = crazy_email
    @valid_visitor.save
    valid_v = Visitor.find_by(name: "Donatella Versace")
    assert_equal crazy_email.downcase, valid_v.email
  end
end


