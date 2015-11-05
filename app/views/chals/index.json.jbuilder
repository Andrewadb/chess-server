json.array!(@chals) do |chal|
  json.extract! chal, :id, :challenger, :challenged
  json.url chal_url(chal, format: :json)
end
