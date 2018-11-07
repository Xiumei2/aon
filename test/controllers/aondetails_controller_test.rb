require 'test_helper'

class AondetailsControllerTest < ActionController::TestCase
  setup do
    @aondetail = aondetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aondetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aondetail" do
    assert_difference('Aondetail.count') do
      post :create, aondetail: { bid: @aondetail.bid, cardholder_id: @aondetail.cardholder_id, roll: @aondetail.roll, win: @aondetail.win }
    end

    assert_redirected_to aondetail_path(assigns(:aondetail))
  end

  test "should show aondetail" do
    get :show, id: @aondetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aondetail
    assert_response :success
  end

  test "should update aondetail" do
    patch :update, id: @aondetail, aondetail: { bid: @aondetail.bid, cardholder_id: @aondetail.cardholder_id, roll: @aondetail.roll, win: @aondetail.win }
    assert_redirected_to aondetail_path(assigns(:aondetail))
  end

  test "should destroy aondetail" do
    assert_difference('Aondetail.count', -1) do
      delete :destroy, id: @aondetail
    end

    assert_redirected_to aondetails_path
  end
end
