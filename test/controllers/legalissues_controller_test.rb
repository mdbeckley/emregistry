require 'test_helper'

class LegalissuesControllerTest < ActionController::TestCase
  setup do
    @legalissue = legalissues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legalissues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legalissue" do
    assert_difference('Legalissue.count') do
      post :create, legalissue: { comment: @legalissue.comment, done: @legalissue.done, issue: @legalissue.issue, name: @legalissue.name }
    end

    assert_redirected_to legalissue_path(assigns(:legalissue))
  end

  test "should show legalissue" do
    get :show, id: @legalissue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legalissue
    assert_response :success
  end

  test "should update legalissue" do
    patch :update, id: @legalissue, legalissue: { comment: @legalissue.comment, done: @legalissue.done, issue: @legalissue.issue, name: @legalissue.name }
    assert_redirected_to legalissue_path(assigns(:legalissue))
  end

  test "should destroy legalissue" do
    assert_difference('Legalissue.count', -1) do
      delete :destroy, id: @legalissue
    end

    assert_redirected_to legalissues_path
  end
end
