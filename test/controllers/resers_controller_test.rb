require 'test_helper'

class ResersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reser = resers(:one)
  end

  test "should get index" do
    get resers_url
    assert_response :success
  end

  test "should get new" do
    get new_reser_url
    assert_response :success
  end

  test "should create reser" do
    assert_difference('Reser.count') do
      post resers_url, params: { reser: { address: @reser.address, email: @reser.email, fname: @reser.fname, lnome: @reser.lnome, phone: @reser.phone } }
    end

    assert_redirected_to reser_url(Reser.last)
  end

  test "should show reser" do
    get reser_url(@reser)
    assert_response :success
  end

  test "should get edit" do
    get edit_reser_url(@reser)
    assert_response :success
  end

  test "should update reser" do
    patch reser_url(@reser), params: { reser: { address: @reser.address, email: @reser.email, fname: @reser.fname, lnome: @reser.lnome, phone: @reser.phone } }
    assert_redirected_to reser_url(@reser)
  end

  test "should destroy reser" do
    assert_difference('Reser.count', -1) do
      delete reser_url(@reser)
    end

    assert_redirected_to resers_url
  end
end
