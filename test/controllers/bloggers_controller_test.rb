require 'test_helper'

class BloggersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blogger = bloggers(:one)
  end

  test "should get index" do
    get bloggers_url
    assert_response :success
  end

  test "should get new" do
    get new_blogger_url
    assert_response :success
  end

  test "should create blogger" do
    assert_difference('Blogger.count') do
      post bloggers_url, params: { blogger: { categoria: @blogger.categoria, fotos: @blogger.fotos, org: @blogger.org, publico: @blogger.publico, resumen: @blogger.resumen, sec1: @blogger.sec1, sec2: @blogger.sec2, tag: @blogger.tag, titulo: @blogger.titulo } }
    end

    assert_redirected_to blogger_url(Blogger.last)
  end

  test "should show blogger" do
    get blogger_url(@blogger)
    assert_response :success
  end

  test "should get edit" do
    get edit_blogger_url(@blogger)
    assert_response :success
  end

  test "should update blogger" do
    patch blogger_url(@blogger), params: { blogger: { categoria: @blogger.categoria, fotos: @blogger.fotos, org: @blogger.org, publico: @blogger.publico, resumen: @blogger.resumen, sec1: @blogger.sec1, sec2: @blogger.sec2, tag: @blogger.tag, titulo: @blogger.titulo } }
    assert_redirected_to blogger_url(@blogger)
  end

  test "should destroy blogger" do
    assert_difference('Blogger.count', -1) do
      delete blogger_url(@blogger)
    end

    assert_redirected_to bloggers_url
  end
end
