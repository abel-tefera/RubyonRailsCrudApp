require 'test_helper'

class MusikasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musika = musikas(:one)
  end

  test "should get index" do
    get musikas_url
    assert_response :success
  end

  test "should get new" do
    get new_musika_url
    assert_response :success
  end

  test "should create musika" do
    assert_difference('Musika.count') do
      post musikas_url, params: { musika: { singer: @musika.singer, title: @musika.title } }
    end

    assert_redirected_to musika_url(Musika.last)
  end

  test "should show musika" do
    get musika_url(@musika)
    assert_response :success
  end

  test "should get edit" do
    get edit_musika_url(@musika)
    assert_response :success
  end

  test "should update musika" do
    patch musika_url(@musika), params: { musika: { singer: @musika.singer, title: @musika.title } }
    assert_redirected_to musika_url(@musika)
  end

  test "should destroy musika" do
    assert_difference('Musika.count', -1) do
      delete musika_url(@musika)
    end

    assert_redirected_to musikas_url
  end
end
