json.array!(@phone_n_umbers) do |phone_n_umber|
  json.extract! phone_n_umber, :id, :number, :person_id
  json.url phone_n_umber_url(phone_n_umber, format: :json)
end
