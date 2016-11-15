json.array!(@extinctions) do |extinction|
  json.extract! extinction, :id, :animal_name, :approx_extinction_at
  json.url extinction_url(extinction, format: :json)
end
