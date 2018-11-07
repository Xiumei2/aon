require 'test_helper'

class CardholdersControllerTest < ActionController::TestCase
  setup do
    @cardholder = cardholders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cardholders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cardholder" do
    assert_difference('Cardholder.count') do
      post :create, cardholder: { balance: @cardholder.balance, birthday: @cardholder.birthday, card_number: @cardholder.card_number, credit: @cardholder.credit, debit: @cardholder.debit, email: @cardholder.email, name: @cardholder.name }
    end

    assert_redirected_to cardholder_path(assigns(:cardholder))
  end

  test "should show cardholder" do
    get :show, id: @cardholder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cardholder
    assert_response :success
  end

  test "should update cardholder" do
    patch :update, id: @cardholder, cardholder: { balance: @cardholder.balance, birthday: @cardholder.birthday, card_number: @cardholder.card_number, credit: @cardholder.credit, debit: @cardholder.debit, email: @cardholder.email, name: @cardholder.name }
    assert_redirected_to cardholder_path(assigns(:cardholder))
  end

  test "should destroy cardholder" do
    assert_difference('Cardholder.count', -1) do
      delete :destroy, id: @cardholder
    end

    assert_redirected_to cardholders_path
  end
end
