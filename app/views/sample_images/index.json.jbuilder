json.array!(@sample_images) do |sample_image|
  json.extract! sample_image, :id, :name
  json.url sample_image_url(sample_image, format: :json)
end
