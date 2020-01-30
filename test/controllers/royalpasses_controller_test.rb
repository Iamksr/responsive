require 'test_helper'

class RoyalpassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @royalpass = royalpasses(:one)
  end

  test "should get index" do
    get royalpasses_url
    assert_response :success
  end

  test "should get new" do
    get new_royalpass_url
    assert_response :success
  end

  test "should create royalpass" do
    assert_difference('Royalpass.count') do
      post royalpasses_url, params: { royalpass: { name: @royalpass.name, pts: @royalpass.pts, rnk: @royalpass.rnk, rp: @royalpass.rp } }
    end

    assert_redirected_to royalpass_url(Royalpass.last)
  end

  test "should show royalpass" do
    get royalpass_url(@royalpass)
    assert_response :success
  end

  test "should get edit" do
    get edit_royalpass_url(@royalpass)
    assert_response :success
  end

  test "should update royalpass" do
    patch royalpass_url(@royalpass), params: { royalpass: { name: @royalpass.name, pts: @royalpass.pts, rnk: @royalpass.rnk, rp: @royalpass.rp } }
    assert_redirected_to royalpass_url(@royalpass)
  end

  test "should destroy royalpass" do
    assert_difference('Royalpass.count', -1) do
      delete royalpass_url(@royalpass)
    end

    assert_redirected_to royalpasses_url
  end
end
