json.array!(@boxes) do |box|
  json.extract! box, :id, :destination, :weight
  json.url box_url(box, format: :json)
end
