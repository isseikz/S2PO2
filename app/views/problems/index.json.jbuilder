json.array!(@problems) do |problem|
  json.extract! problem, :id, :theme_id, :category, :level, :content, :answer, :correct_counter
  json.url problem_url(problem, format: :json)
end
