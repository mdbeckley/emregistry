json.array!(@problems) do |problem|
  json.extract! problem, :id, :name, :issue, :comment, :fixed
  json.url problem_url(problem, format: :json)
end
