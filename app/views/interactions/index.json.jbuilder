json.array!(@interactions) do |interaction|
  json.extract! interaction, :id, :user, :title, :category, :pcs, :text, :timestamp
  json.url interaction_url(interaction, format: :json)
end
