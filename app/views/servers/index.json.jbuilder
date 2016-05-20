json.array!(@servers) do |server|
  json.extract! server, :id, :host, :session_id
  json.url server_url(server, format: :json)
end
