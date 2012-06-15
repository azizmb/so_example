require 'test_helper'

class SelfService::CustomersControllerTest < ActionController::TestCase
  setup do
    @self_service_customer = self_service_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:self_service_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create self_service_customer" do
    assert_difference('SelfService::Customer.count') do
      post :create, :self_service_customer => @self_service_customer.attributes
    end

    assert_redirected_to self_service_customer_path(assigns(:self_service_customer))
  end

  test "should show self_service_customer" do
    get :show, :id => @self_service_customer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @self_service_customer.to_param
    assert_response :success
  end

  test "should update self_service_customer" do
    put :update, :id => @self_service_customer.to_param, :self_service_customer => @self_service_customer.attributes
    assert_redirected_to self_service_customer_path(assigns(:self_service_customer))
  end

  test "should destroy self_service_customer" do
    assert_difference('SelfService::Customer.count', -1) do
      delete :destroy, :id => @self_service_customer.to_param
    end

    assert_redirected_to self_service_customers_path
  end
end
