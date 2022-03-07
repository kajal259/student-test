require "application_system_test_case"

class StudenttestsTest < ApplicationSystemTestCase
  setup do
    @studenttest = studenttests(:one)
  end

  test "visiting the index" do
    visit studenttests_url
    assert_selector "h1", text: "Studenttests"
  end

  test "should create studenttest" do
    visit studenttests_url
    click_on "New studenttest"

    fill_in "Student", with: @studenttest.student_id
    fill_in "Subject", with: @studenttest.subject_id
    click_on "Create Studenttest"

    assert_text "Studenttest was successfully created"
    click_on "Back"
  end

  test "should update Studenttest" do
    visit studenttest_url(@studenttest)
    click_on "Edit this studenttest", match: :first

    fill_in "Student", with: @studenttest.student_id
    fill_in "Subject", with: @studenttest.subject_id
    click_on "Update Studenttest"

    assert_text "Studenttest was successfully updated"
    click_on "Back"
  end

  test "should destroy Studenttest" do
    visit studenttest_url(@studenttest)
    click_on "Destroy this studenttest", match: :first

    assert_text "Studenttest was successfully destroyed"
  end
end
