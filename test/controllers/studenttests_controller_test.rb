require "test_helper"

class StudenttestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studenttest = studenttests(:one)
  end

  test "should get index" do
    get studenttests_url
    assert_response :success
  end

  test "should get new" do
    get new_studenttest_url
    assert_response :success
  end

  test "should create studenttest" do
    assert_difference("Studenttest.count") do
      post studenttests_url, params: { studenttest: { student_id: @studenttest.student_id, subject_id: @studenttest.subject_id } }
    end

    assert_redirected_to studenttest_url(Studenttest.last)
  end

  test "should show studenttest" do
    get studenttest_url(@studenttest)
    assert_response :success
  end

  test "should get edit" do
    get edit_studenttest_url(@studenttest)
    assert_response :success
  end

  test "should update studenttest" do
    patch studenttest_url(@studenttest), params: { studenttest: { student_id: @studenttest.student_id, subject_id: @studenttest.subject_id } }
    assert_redirected_to studenttest_url(@studenttest)
  end

  test "should destroy studenttest" do
    assert_difference("Studenttest.count", -1) do
      delete studenttest_url(@studenttest)
    end

    assert_redirected_to studenttests_url
  end
end
