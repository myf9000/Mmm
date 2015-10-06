json.array!(@eats) do |eat|
  json.extract! eat, :id, :title, :components, :preparation, :preparation_time, :cost, :tags
  json.url eat_url(eat, format: :json)
end
