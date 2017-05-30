require 'test_helper'

class ConstellationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @constellation = constellations(:one)
  end

  test "should get index" do
    get constellations_url
    assert_response :success
  end

  test "should get new" do
    get new_constellation_url
    assert_response :success
  end

  test "should create constellation" do
    assert_difference('Constellation.count') do
      post constellations_url, params: { constellation: {  } }
    end

    assert_redirected_to constellation_url(Constellation.last)
  end

  test "should show constellation" do
    get constellation_url(@constellation)
    assert_response :success
  end

  test "should get edit" do
    get edit_constellation_url(@constellation)
    assert_response :success
  end

  test "should update constellation" do
    patch constellation_url(@constellation), params: { constellation: {  } }
    assert_redirected_to constellation_url(@constellation)
  end

  test "should destroy constellation" do
    assert_difference('Constellation.count', -1) do
      delete constellation_url(@constellation)
    end

    assert_redirected_to constellations_url
  end
end
