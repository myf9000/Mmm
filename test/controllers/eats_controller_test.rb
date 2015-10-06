require 'test_helper'

class EatsControllerTest < ActionController::TestCase
  setup do
    @eat = eats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eat" do
    assert_difference('Eat.count') do
      post :create, eat: { components: @eat.components, cost: @eat.cost, preparation: @eat.preparation, preparation_time: @eat.preparation_time, tags: @eat.tags, title: @eat.title }
    end

    assert_redirected_to eat_path(assigns(:eat))
  end

  test "should show eat" do
    get :show, id: @eat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eat
    assert_response :success
  end

  test "should update eat" do
    patch :update, id: @eat, eat: { components: @eat.components, cost: @eat.cost, preparation: @eat.preparation, preparation_time: @eat.preparation_time, tags: @eat.tags, title: @eat.title }
    assert_redirected_to eat_path(assigns(:eat))
  end

  test "should destroy eat" do
    assert_difference('Eat.count', -1) do
      delete :destroy, id: @eat
    end

    assert_redirected_to eats_path
  end
end
