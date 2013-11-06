require 'test_helper'

class BandProfilesControllerTest < ActionController::TestCase
  setup do
    @band_profile = band_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:band_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create band_profile" do
    assert_difference('BandProfile.count') do
      post :create, band_profile: { info: @band_profile.info, name: @band_profile.name }
    end

    assert_redirected_to band_profile_path(assigns(:band_profile))
  end

  test "should show band_profile" do
    get :show, id: @band_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @band_profile
    assert_response :success
  end

  test "should update band_profile" do
    patch :update, id: @band_profile, band_profile: { info: @band_profile.info, name: @band_profile.name }
    assert_redirected_to band_profile_path(assigns(:band_profile))
  end

  test "should destroy band_profile" do
    assert_difference('BandProfile.count', -1) do
      delete :destroy, id: @band_profile
    end

    assert_redirected_to band_profiles_path
  end
end
