require 'test_helper'

class HoroscopesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horoscope = horoscopes(:one)
  end

  test "should get index" do
    get horoscopes_url
    assert_response :success
  end

  test "should get new" do
    get new_horoscope_url
    assert_response :success
  end

  test "should create horoscope" do
    assert_difference('Horoscope.count') do
      post horoscopes_url, params: { horoscope: { end_dt: @horoscope.end_dt, img_url: @horoscope.img_url, start_dt: @horoscope.start_dt, title: @horoscope.title } }
    end

    assert_redirected_to horoscope_url(Horoscope.last)
  end

  test "should show horoscope" do
    get horoscope_url(@horoscope)
    assert_response :success
  end

  test "should get edit" do
    get edit_horoscope_url(@horoscope)
    assert_response :success
  end

  test "should update horoscope" do
    patch horoscope_url(@horoscope), params: { horoscope: { end_dt: @horoscope.end_dt, img_url: @horoscope.img_url, start_dt: @horoscope.start_dt, title: @horoscope.title } }
    assert_redirected_to horoscope_url(@horoscope)
  end

  test "should destroy horoscope" do
    assert_difference('Horoscope.count', -1) do
      delete horoscope_url(@horoscope)
    end

    assert_redirected_to horoscopes_url
  end
end
