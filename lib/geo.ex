defmodule Geo do
  use HTTPotion.Base
  def geocode(location) do
    try do
      start
      [[_ | [_ | [{_,[_|[{_,[{_,lat}|[{_,lng}]]}|_]]} | _] ] ] | _] = get(location).body[:results]
      {lat,lng}
    rescue
     _ -> {35.727, 135.754204}
    end
  end

  def process_response_body(body) do
    json = :jsx.decode to_binary(body)
    json2 = Enum.map json, fn ({k, v}) -> { binary_to_atom(k), v } end
    :orddict.from_list json2
  end
  def process_url(location) do
    l = to_char_list location
    address = :ibrowse_lib.url_encode(l)
    to_char_list "http://maps.google.com/maps/api/geocode/json?address=#{address}&sensor=false&language=ja"
  end
end
