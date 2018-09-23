require 'test_helper'

class CodeworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @codework = codeworks(:one)
  end

  test "should get index" do
    get codeworks_url
    assert_response :success
  end

  test "should get new" do
    get new_codework_url
    assert_response :success
  end

  test "should create codework" do
    assert_difference('Codework.count') do
      post codeworks_url, params: { codework: { city: @codework.city, comments: @codework.comments, company: @codework.company, postion: @codework.postion, salary: @codework.salary, state: @codework.state } }
    end

    assert_redirected_to codework_url(Codework.last)
  end

  test "should show codework" do
    get codework_url(@codework)
    assert_response :success
  end

  test "should get edit" do
    get edit_codework_url(@codework)
    assert_response :success
  end

  test "should update codework" do
    patch codework_url(@codework), params: { codework: { city: @codework.city, comments: @codework.comments, company: @codework.company, postion: @codework.postion, salary: @codework.salary, state: @codework.state } }
    assert_redirected_to codework_url(@codework)
  end

  test "should destroy codework" do
    assert_difference('Codework.count', -1) do
      delete codework_url(@codework)
    end

    assert_redirected_to codeworks_url
  end
end
