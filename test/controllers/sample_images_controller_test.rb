require 'test_helper'

class SampleImagesControllerTest < ActionController::TestCase
  setup do
    @sample_image = sample_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sample_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample_image" do
    assert_difference('SampleImage.count') do
      post :create, sample_image: { name: @sample_image.name }
    end

    assert_redirected_to sample_image_path(assigns(:sample_image))
  end

  test "should show sample_image" do
    get :show, id: @sample_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sample_image
    assert_response :success
  end

  test "should update sample_image" do
    patch :update, id: @sample_image, sample_image: { name: @sample_image.name }
    assert_redirected_to sample_image_path(assigns(:sample_image))
  end

  test "should destroy sample_image" do
    assert_difference('SampleImage.count', -1) do
      delete :destroy, id: @sample_image
    end

    assert_redirected_to sample_images_path
  end
end
