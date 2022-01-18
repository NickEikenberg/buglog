json.extract! bug, :id, :title, :description, :branch, :severity, :priority, :reported_by, :assigned_to, :status, :repro_steps, :created_at, :updated_at
json.url bug_url(bug, format: :json)
