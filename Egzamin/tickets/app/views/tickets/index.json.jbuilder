json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :name, :seat, :address, :price, :email_address
  json.url ticket_url(ticket, format: :json)
end
