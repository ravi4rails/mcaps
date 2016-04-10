require 'test_helper'

class EmployeeDepartmentsControllerTest < ActionController::TestCase
  setup do
    @employee_department = employee_departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_department" do
    assert_difference('EmployeeDepartment.count') do
      post :create, employee_department: { code: @employee_department.code, name: @employee_department.name }
    end

    assert_redirected_to employee_department_path(assigns(:employee_department))
  end

  test "should show employee_department" do
    get :show, id: @employee_department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_department
    assert_response :success
  end

  test "should update employee_department" do
    patch :update, id: @employee_department, employee_department: { code: @employee_department.code, name: @employee_department.name }
    assert_redirected_to employee_department_path(assigns(:employee_department))
  end

  test "should destroy employee_department" do
    assert_difference('EmployeeDepartment.count', -1) do
      delete :destroy, id: @employee_department
    end

    assert_redirected_to employee_departments_path
  end
end
