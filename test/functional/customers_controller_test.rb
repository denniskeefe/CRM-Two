require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { address_city: @customer.address_city, address_state: @customer.address_state, address_state: @customer.address_state, address_street: @customer.address_street, email: @customer.email, id: @customer.id, name_company: @customer.name_company, name_first: @customer.name_first, name_last: @customer.name_last, phone: @customer.phone, postal_code: @customer.postal_code }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    put :update, id: @customer, customer: { address_city: @customer.address_city, address_state: @customer.address_state, address_state: @customer.address_state, address_street: @customer.address_street, email: @customer.email, id: @customer.id, name_company: @customer.name_company, name_first: @customer.name_first, name_last: @customer.name_last, phone: @customer.phone, postal_code: @customer.postal_code }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
