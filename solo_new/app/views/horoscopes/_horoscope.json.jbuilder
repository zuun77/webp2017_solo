json.extract! horoscope, :id, :title, :start_dt, :end_dt, :img_url, :created_at, :updated_at
json.url horoscope_url(horoscope, format: :json)
