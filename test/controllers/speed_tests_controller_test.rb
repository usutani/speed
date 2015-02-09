require 'test_helper'

class SpeedTestsControllerTest < ActionController::TestCase
  setup do
    @speed_test = speed_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:speed_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create speed_test" do
    assert_difference('SpeedTest.count') do
      post :create, speed_test: { datetime: @speed_test.datetime, download: @speed_test.download, ping: @speed_test.ping, upload: @speed_test.upload }
    end

    assert_redirected_to speed_test_path(assigns(:speed_test))
  end

  test "should show speed_test" do
    get :show, id: @speed_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @speed_test
    assert_response :success
  end

  test "should update speed_test" do
    patch :update, id: @speed_test, speed_test: { datetime: @speed_test.datetime, download: @speed_test.download, ping: @speed_test.ping, upload: @speed_test.upload }
    assert_redirected_to speed_test_path(assigns(:speed_test))
  end

  test "should destroy speed_test" do
    assert_difference('SpeedTest.count', -1) do
      delete :destroy, id: @speed_test
    end

    assert_redirected_to speed_tests_path
  end
end
