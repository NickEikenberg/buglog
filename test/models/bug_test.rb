require "test_helper"

class BugTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Bug.new(title: "New Bug", description: "New bug description", branch: "dev", severity: "A", priority: "high", reported_by: 2, assigned_to: 3, status: "open", repro_steps: "One two three baby")
  end
end
