require 'test_helper'

class UserasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usera = useras(:one)
  end

  test "should get index" do
    get useras_url
    assert_response :success
  end

  test "should get new" do
    get new_usera_url
    assert_response :success
  end

  test "should create usera" do
    assert_difference('Usera.count') do
      post useras_url, params: { usera: { age: @usera.age, name: @usera.name } }
    end

    assert_redirected_to usera_url(Usera.last)
  end

  test "should show usera" do
    get usera_url(@usera)
    assert_response :success
  end

  test "should get edit" do
    get edit_usera_url(@usera)
    assert_response :success
  end

  test "should update usera" do
    patch usera_url(@usera), params: { usera: { age: @usera.age, name: @usera.name } }
    assert_redirected_to usera_url(@usera)
  end

  test "should destroy usera" do
    assert_difference('Usera.count', -1) do
      delete usera_url(@usera)
    end

    assert_redirected_to useras_url
  end
end
