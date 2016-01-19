json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :description, :user_id, :proyect_id, :role, :image
  json.url task_url(task, format: :json)
end
