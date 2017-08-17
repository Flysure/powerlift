require 'test_helper'

class ExcersizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @excersize = excersizes(:one)
  end

  test "should get index" do
    get excersizes_url
    assert_response :success
  end

  test "should get new" do
    get new_excersize_url
    assert_response :success
  end

  test "should create excersize" do
    assert_difference('Excersize.count') do
      post excersizes_url, params: { excersize: { name: @excersize.name, reps: @excersize.reps, sets: @excersize.sets, week_id: @excersize.week_id, weight: @excersize.weight } }
    end

    assert_redirected_to excersize_url(Excersize.last)
  end

  test "should show excersize" do
    get excersize_url(@excersize)
    assert_response :success
  end

  test "should get edit" do
    get edit_excersize_url(@excersize)
    assert_response :success
  end

  test "should update excersize" do
    patch excersize_url(@excersize), params: { excersize: { name: @excersize.name, reps: @excersize.reps, sets: @excersize.sets, week_id: @excersize.week_id, weight: @excersize.weight } }
    assert_redirected_to excersize_url(@excersize)
  end

  test "should destroy excersize" do
    assert_difference('Excersize.count', -1) do
      delete excersize_url(@excersize)
    end

    assert_redirected_to excersizes_url
  end
end
