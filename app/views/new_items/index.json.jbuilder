json.array!(@new_items) do |new_item|
  json.extract! new_item, :id, :user_id, :title, :url, :content, :votes, :flagged
  json.url new_item_url(new_item, format: :json)
end
