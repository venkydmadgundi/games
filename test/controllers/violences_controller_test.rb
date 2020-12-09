require 'test_helper'

class ViolencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @violence = violences(:one)
  end

  test "should get index" do
    get violences_url
    assert_response :success
  end

  test "should get new" do
    get new_violence_url
    assert_response :success
  end

  test "should create violence" do
    assert_difference('Violence.count') do
      post violences_url, params: { violence: { active: @violence.active, name: @violence.name } }
    end

    assert_redirected_to violence_url(Violence.last)
  end

  test "should show violence" do
    get violence_url(@violence)
    assert_response :success
  end

  test "should get edit" do
    get edit_violence_url(@violence)
    assert_response :success
  end

  test "should update violence" do
    patch violence_url(@violence), params: { violence: { active: @violence.active, name: @violence.name } }
    assert_redirected_to violence_url(@violence)
  end

  test "should destroy violence" do
    assert_difference('Violence.count', -1) do
      delete violence_url(@violence)
    end

    assert_redirected_to violences_url
  end
end
