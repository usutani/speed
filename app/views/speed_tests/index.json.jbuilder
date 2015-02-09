json.array!(@speed_tests) do |speed_test|
  json.extract! speed_test, :id, :datetime, :ping, :download, :upload
  json.url speed_test_url(speed_test, format: :json)
end
