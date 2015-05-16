require 'test_helper'

class ProfoliosControllerTest < ActionController::TestCase
  setup do
    @profolio = profolios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profolios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profolio" do
    assert_difference('Profolio.count') do
      post :create, profolio: { name: @profolio.name, password: @profolio.password, stocks: @profolio.stocks }
    end

    assert_redirected_to profolio_path(assigns(:profolio))
  end

  test "should show profolio" do
    get :show, id: @profolio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profolio
    assert_response :success
  end

  test "should update profolio" do
    patch :update, id: @profolio, profolio: { name: @profolio.name, password: @profolio.password, stocks: @profolio.stocks }
    assert_redirected_to profolio_path(assigns(:profolio))
  end

  test "should destroy profolio" do
    assert_difference('Profolio.count', -1) do
      delete :destroy, id: @profolio
    end

    assert_redirected_to profolios_path
  end
end
