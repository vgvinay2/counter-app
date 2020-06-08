require 'test_helper'

class ContersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conter = conters(:one)
  end

  test "should get index" do
    get conters_url
    assert_response :success
  end

  test "should get new" do
    get new_conter_url
    assert_response :success
  end

  test "should create conter" do
    assert_difference('Conter.count') do
      post conters_url, params: { conter: { count: @conter.count } }
    end

    assert_redirected_to conter_url(Conter.last)
  end

  test "should show conter" do
    get conter_url(@conter)
    assert_response :success
  end

  test "should get edit" do
    get edit_conter_url(@conter)
    assert_response :success
  end

  test "should update conter" do
    patch conter_url(@conter), params: { conter: { count: @conter.count } }
    assert_redirected_to conter_url(@conter)
  end

  test "should destroy conter" do
    assert_difference('Conter.count', -1) do
      delete conter_url(@conter)
    end

    assert_redirected_to conters_url
  end
end
