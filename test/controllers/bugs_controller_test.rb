require "test_helper"

class BugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bug = bugs(:testbug)
    @project = projects(:projectone)
    @user = users(:testuser)
  end

  # test "should get index" do
  #   get bugs_url
  #   assert_response :success
  # end

  test "should get new" do
    get new_bug_url(@bug.id)
    assert_response :success
  end

  test "should create bug" do
    assert_difference('Bug.count') do
      post bugs_url(@bug.id), params: { bug: { assigned_to: @bug.assigned_to, branch: @bug.branch, description: @bug.description, priority: @bug.priority, reported_by: @bug.reported_by, repro_steps: @bug.repro_steps, severity: @bug.severity, status: @bug.status, title: @bug.title, project_id: @project.id } }
    end

    assert_redirected_to bug_url(Bug.last)
  end

  test "should show bug" do
    get bug_url(@bug)
    assert_response :success
  end

  test "should get edit" do
    get edit_bug_url(@bug)
    assert_response :success
  end

  test "should update bug" do
    patch bug_url(@bug), params: { bug: { assigned_to: @bug.assigned_to, branch: @bug.branch, description: @bug.description, priority: @bug.priority, reported_by: @bug.reported_by, repro_steps: @bug.repro_steps, severity: @bug.severity, status: @bug.status, title: @bug.title, project_id: @project.id } }
    assert_redirected_to bug_url(@bug)
  end

  test "should destroy bug" do
    assert_difference('Bug.count', -1) do
      delete bug_url(@bug)
    end

    assert_redirected_to bugs_url
  end
end
