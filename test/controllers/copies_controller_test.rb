require 'test_helper'

class CopiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @copy = copies(:one)
  end

  test "should get index" do
    get copies_url
    assert_response :success
  end

  test "should get new" do
    get new_copy_url
    assert_response :success
  end

  test "should create copy" do
    assert_difference('Copie.count') do
      post copies_url, params: { copy: { code: @copy.code, place: @copy.place } }
    end

    assert_redirected_to copy_url(Copie.last)
  end

  test "should show copy" do
    get copy_url(@copy)
    assert_response :success
  end

  test "should get edit" do
    get edit_copy_url(@copy)
    assert_response :success
  end

  test "should update copy" do
    patch copy_url(@copy), params: { copy: { code: @copy.code, place: @copy.place } }
    assert_redirected_to copy_url(@copy)
  end

  test "should destroy copy" do
    assert_difference('Copie.count', -1) do
      delete copy_url(@copy)
    end

    assert_redirected_to copies_url
  end
end
