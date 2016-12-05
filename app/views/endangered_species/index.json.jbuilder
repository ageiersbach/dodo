json.array!(@endangered_species) do |endangered_specy|
  json.extract! endangered_specy, :id, :name, :candidate, :priority
  json.url endangered_specy_url(endangered_specy, format: :json)
end
