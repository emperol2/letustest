require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  def test_show
    get :show, :id => Users.first
    assert_template 'show'
  end
end
