require 'test_helper'

class WebPageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get js" do
    get :js
    assert_response :success
  end

  test "should get employers" do
    get :employers
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
