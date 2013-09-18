require 'test_helper'

class EngagementsControllerTest < ActionController::TestCase
  setup do
    @engagement = engagements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engagements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engagement" do
    assert_difference('Engagement.count') do
      post :create, engagement: { contractor: @engagement.contractor, contractor_id: @engagement.contractor_id, contractor_last_name: @engagement.contractor_last_name, customer: @engagement.customer, customer_id: @engagement.customer_id, end_week: @engagement.end_week, rate_of_pay: @engagement.rate_of_pay, shift: @engagement.shift, start_week: @engagement.start_week }
    end

    assert_redirected_to engagement_path(assigns(:engagement))
  end

  test "should show engagement" do
    get :show, id: @engagement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @engagement
    assert_response :success
  end

  test "should update engagement" do
    put :update, id: @engagement, engagement: { contractor: @engagement.contractor, contractor_id: @engagement.contractor_id, contractor_last_name: @engagement.contractor_last_name, customer: @engagement.customer, customer_id: @engagement.customer_id, end_week: @engagement.end_week, rate_of_pay: @engagement.rate_of_pay, shift: @engagement.shift, start_week: @engagement.start_week }
    assert_redirected_to engagement_path(assigns(:engagement))
  end

  test "should destroy engagement" do
    assert_difference('Engagement.count', -1) do
      delete :destroy, id: @engagement
    end

    assert_redirected_to engagements_path
  end
end
