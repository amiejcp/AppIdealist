json.array!(@ideas) do |idea|
  json.extract! idea, :content, :user_id
  json.url idea_url(idea, format: :json)
end
