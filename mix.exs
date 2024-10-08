defmodule EmailFormatter.MixProject do
  use Mix.Project

  def project do
    [
      app: :email_formatter,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:openai, "~> 0.6.2"},
      {:httpoison, "~> 2.0"},  # Explicitly specify HTTPoison version
      {:jason, "~> 1.4"}       # Explicitly specify Jason version
    ]
  end
end