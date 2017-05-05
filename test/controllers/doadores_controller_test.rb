require 'test_helper'

class DoadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doadore = doadores(:one)
  end

  test "should get index" do
    get doadores_url
    assert_response :success
  end

  test "should get new" do
    get new_doadore_url
    assert_response :success
  end

  test "should create doadore" do
    assert_difference('Doadore.count') do
      post doadores_url, params: { doadore: { email: @doadore.email, name: @doadore.name, telefone: @doadore.telefone, tipo: @doadore.tipo } }
    end

    assert_redirected_to doadore_url(Doadore.last)
  end

  test "should show doadore" do
    get doadore_url(@doadore)
    assert_response :success
  end

  test "should get edit" do
    get edit_doadore_url(@doadore)
    assert_response :success
  end

  test "should update doadore" do
    patch doadore_url(@doadore), params: { doadore: { email: @doadore.email, name: @doadore.name, telefone: @doadore.telefone, tipo: @doadore.tipo } }
    assert_redirected_to doadore_url(@doadore)
  end

  test "should destroy doadore" do
    assert_difference('Doadore.count', -1) do
      delete doadore_url(@doadore)
    end

    assert_redirected_to doadores_url
  end
end
