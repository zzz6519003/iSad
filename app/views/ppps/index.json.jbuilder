json.array!(@ppps) do |ppp|
  json.extract! ppp, :id, :name
  json.url ppp_url(ppp, format: :json)
end
