json.array!(@stats) do |stat|
  json.extract! stat, :id, :aname, :age, :height, :weight, :wellness_goals
  json.url stat_url(stat, format: :json)
end
