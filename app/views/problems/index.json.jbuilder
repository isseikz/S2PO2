json.array!(@problems) do |problem|
  json.extract! problem, :id, :theme_id_id, :type, :level, :content, :answer, :correct_counter
  json.url problem_url(problem, format: :json)
end
