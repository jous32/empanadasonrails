require 'test_helper'

class SystemInformationsControllerTest < ActionController::TestCase
  setup do
    @system_information = system_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_information" do
    assert_difference('SystemInformation.count') do
      post :create, system_information: { checked_at: @system_information.checked_at, ram_available: @system_information.ram_available }
    end

    assert_redirected_to system_information_path(assigns(:system_information))
  end

  test "should show system_information" do
    get :show, id: @system_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_information
    assert_response :success
  end

  test "should update system_information" do
    patch :update, id: @system_information, system_information: { checked_at: @system_information.checked_at, ram_available: @system_information.ram_available }
    assert_redirected_to system_information_path(assigns(:system_information))
  end

  test "should destroy system_information" do
    assert_difference('SystemInformation.count', -1) do
      delete :destroy, id: @system_information
    end

    assert_redirected_to system_informations_path
  end
end
