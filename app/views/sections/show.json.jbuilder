
  json.type  "Feature"

  json.properties do
    json.extract! @section, :id, :distance, :duration, :start_address, :end_address
    json.html @partial
    json.url section_url(@section, format: :json)
  end

  json.geometry do
    json.type "LineString"
    json.coordinates @section.points.pluck(:lng, :lat)
  end
