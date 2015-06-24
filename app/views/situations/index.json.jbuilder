json.array!(@situations) do |situation|
  json.extract! situation, :id, :choice_1, :choice_1_label, :choice_2, :choice_2_label, :sit_rep
  json.url situation_url(situation, format: :json)
end
