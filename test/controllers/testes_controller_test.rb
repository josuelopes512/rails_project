require 'test_helper'

class TestesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testis = testes(:one)
  end

  test "should get index" do
    get testes_url
    assert_response :success
  end

  test "should get new" do
    get new_testis_url
    assert_response :success
  end

  test "should create testis" do
    assert_difference('Teste.count') do
      post testes_url, params: { testis: { a: @testis.a, b: @testis.b, c: @testis.c } }
    end

    assert_redirected_to testis_url(Teste.last)
  end

  test "should show testis" do
    get testis_url(@testis)
    assert_response :success
  end

  test "should get edit" do
    get edit_testis_url(@testis)
    assert_response :success
  end

  test "should update testis" do
    patch testis_url(@testis), params: { testis: { a: @testis.a, b: @testis.b, c: @testis.c } }
    assert_redirected_to testis_url(@testis)
  end

  test "should destroy testis" do
    assert_difference('Teste.count', -1) do
      delete testis_url(@testis)
    end

    assert_redirected_to testes_url
  end
end
