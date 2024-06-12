defmodule ShapeCheckLinearModels.MixProject do
  use Mix.Project

  def project do
    [
      app: :shape_check_linear_models,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:scholar, "~> 0.3.0"},
      {:exla, ">= 0.0.0"},
    ]
  end
end
