require 'test_helper'

class SituationsControllerTest < ActionController::TestCase
  setup do
    @situation = situations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:situations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create situation" do
    assert_difference('Situation.count') do
      post :create, situation: { choice_1: @situation.choice_1, choice_1_label: @situation.choice_1_label, choice_2: @situation.choice_2, choice_2_label: @situation.choice_2_label, sit_rep: @situation.sit_rep }
    end

    assert_redirected_to situation_path(assigns(:situation))
  end

  test "should show situation" do
    get :show, id: @situation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @situation
    assert_response :success
  end

  test "should update situation" do
    patch :update, id: @situation, situation: { choice_1: @situation.choice_1, choice_1_label: @situation.choice_1_label, choice_2: @situation.choice_2, choice_2_label: @situation.choice_2_label, sit_rep: @situation.sit_rep }
    assert_redirected_to situation_path(assigns(:situation))
  end

  test "should destroy situation" do
    assert_difference('Situation.count', -1) do
      delete :destroy, id: @situation
    end

    assert_redirected_to situations_path
  end
end
