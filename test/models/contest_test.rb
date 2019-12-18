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

end
