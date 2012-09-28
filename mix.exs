defmodule RenoirSearchElixir.Mixfile do
  use Mix.Project

  def project do
    [ app: :renoir_search_elixir,
      version: "0.0.1",
      prepare_task: "dynamo.app",
      compilers: [:elixir, :dynamo, :app],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  defp deps do
    [ { :ranch, %r(.*), github: "extend/ranch" },
      { :cowboy, %r(.*), github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", github: "mururu/dynamo", branch: "static_heroku" },
      { :httpotion, "0.1.0", github: "myfreeweb/httpotion" },
      { :jsx, "1.3.3", github: "talentdeficit/jsx"},
      { :holidayjp, "0.0.1", github: "mururu/holidayjp"}]
  end
end
