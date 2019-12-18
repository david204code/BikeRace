require 'test_helper'

class ContestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @contest = Contest.new(firstname: "First", lastname: "Second", email: "firstsecond@example.com", slogan: "I am going to win")
  end

  test "filled in correctly" do
    assert @contest.valid?
  end

  test "firstname present" do
    @contest.firstname = " "
    assert_not @contest.valid?
  end

  test "lastname present" do
    @contest.lastname = " "
    assert_not @contest.valid?
  end

  test "email present" do
    @contest.email = " "
    assert_not @contest.valid?
  end

  test "slogan present" do 
    @contest.slogan = " "
    assert_not @contest.valid?
  end

  test "length of firstname" do 
    @contest.firstname = "a" * 21
    assert_not @contest.valid?
  end

  test "length of lastname" do 
    @contest.lastname = "a" * 31
    assert_not @contest.valid?
  end
  
  test "length of email" do 
    @contest.email = "a" * 256 + "@example.com"
    assert_not @contest.valid?
  end
  
  test "length of slogan" do 
    @contest.slogan = "a" * 51
    assert_not @contest.valid?
  end


end
