defmodule RenooirSearchElixir.Mixfile do
  use Mix.Project

  def project do
    [ app: :renooir_search_elixir,
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
    [ { :cowboy, "0.6.1", github: "josevalim/cowboy" },
      { :dynamo, "0.1.0.dev", github: "josevalim/dynamo" } ]
  end
end
