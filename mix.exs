defmodule UsersCrud.MixProject do
  use Mix.Project

  def project do
    [
      app: :users_crud,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :sqlite_ecto2, :ecto],
      mod: {UsersCrud.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:sqlite_ecto2, "~> 2.2"}
    ]
  end
end
