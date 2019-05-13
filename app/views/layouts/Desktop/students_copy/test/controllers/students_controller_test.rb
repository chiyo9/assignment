require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { date_of_birth: @student.date_of_birth, family_name: @student.family_name, given_name: @student.given_name, grade_point_average: @student.grade_point_average, middle_name: @student.middle_name, start_date: @student.start_date } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { date_of_birth: @student.date_of_birth, family_name: @student.family_name, given_name: @student.given_name, grade_point_average: @student.grade_point_average, middle_name: @student.middle_name, start_date: @student.start_date } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
