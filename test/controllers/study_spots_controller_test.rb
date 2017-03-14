require 'test_helper'

class StudySpotsControllerTest < ActionController::TestCase
  setup do
    @study_spot = study_spots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:study_spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create study_spot" do
    assert_difference('StudySpot.count') do
      post :create, study_spot: {  }
    end

    assert_redirected_to study_spot_path(assigns(:study_spot))
  end

  test "should show study_spot" do
    get :show, id: @study_spot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @study_spot
    assert_response :success
  end

  test "should update study_spot" do
    patch :update, id: @study_spot, study_spot: {  }
    assert_redirected_to study_spot_path(assigns(:study_spot))
  end

  test "should destroy study_spot" do
    assert_difference('StudySpot.count', -1) do
      delete :destroy, id: @study_spot
    end

    assert_redirected_to study_spots_path
  end
end
