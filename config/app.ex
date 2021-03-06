defmodule RenooirSearchElixir do
  use Dynamo.App

  endpoint ApplicationRouter

  config :dynamo,
    # The OTP application associated to this app
    # This is the name of the .app file generated by mix
    otp_app: :renooir_search_elixir,
    # The route from where public assets are served
    # You can turn off static assets by setting it to false
    static_route: "/static"

  initializer :start_otp_app do
    :application.start config[:dynamo][:otp_app]
  end
end
