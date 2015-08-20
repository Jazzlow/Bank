require 'test_helper'

class LodgementsControllerTest < ActionController::TestCase
  setup do
    @lodgement = lodgements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lodgements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lodgement" do
    assert_difference('Lodgement.count') do
      post :create, lodgement: { amount: @lodgement.amount, description: @lodgement.description, name: @lodgement.name }
    end

    assert_redirected_to lodgement_path(assigns(:lodgement))
  end

  test "should show lodgement" do
    get :show, id: @lodgement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lodgement
    assert_response :success
  end

  test "should update lodgement" do
    patch :update, id: @lodgement, lodgement: { amount: @lodgement.amount, description: @lodgement.description, name: @lodgement.name }
    assert_redirected_to lodgement_path(assigns(:lodgement))
  end

  test "should destroy lodgement" do
    assert_difference('Lodgement.count', -1) do
      delete :destroy, id: @lodgement
    end

    assert_redirected_to lodgements_path
  end
end
