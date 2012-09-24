defmodule ApplicationRouter do
  use Dynamo.Router

  # Pick which parts of the request you want to fetch
  # You can comment the line below if you don't need
  # any of them or move them to a forwarded router
  fetch [:params]

  # It is common to break your application in many
  # routers forwarding the requests between them
  # forward "/posts", to: PostsRouter

  @fixture_path File.expand_path("../../views", __FILE__)
  @path_finder  Dynamo.View.PathFinder.new(@fixture_path)
  @view_paths   [@path_finder]

  get "/" do
    conn.resp(200, render("index.html",[]))
  end

  post "/search" do
    time = conn.params[:real_value]
    options = conn.params[:options]
    location =  conn.params[:location]
    if location do
      {lat,lng} =  Geo.geocode(location)
    else
      lat = conn.params[:lat] || 35.727
      lng = conn.params[:lng] || 135.754204
    end
    shops = Shop.search(lat,lng,time,options)
    conn.resp(200, render("search.html",[list: shops]))
  end

  get "/shops/:id" do
    id_num = list_to_integer(binary_to_list(id))
    conn.resp(200, render("show.html", [shop: Shop.find(id_num)]))
  end

  defp render(query, assigns) do
    Dynamo.View.render Dynamo.View.find(query, @view_paths), [], assigns
  end

end

