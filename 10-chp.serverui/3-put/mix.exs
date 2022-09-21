# ---
# Excerpted from "Craft GraphQL APIs in Elixir with Absinthe",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/wwgraphql for more book information.
# ---
defmodule PlateSlate.Mixfile do
  use Mix.Project

  def project do
    [
      app: :plate_slate,
      version: "0.0.1",
      elixir: "~> 1.13",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {PlateSlate.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "dev/support", "test/support"]
  defp elixirc_paths(:dev), do: ["lib", "dev/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:dataloader, ">= 0.0.0"},
      # Other deps
      {:comeonin_ecto_password, ">= 0.0.0"},
      {:pbkdf2_elixir, ">= 0.0.0"},
      {:phoenix, ">= 0.0.0"},
      {:phoenix_pubsub, ">= 0.0.0"},
      {:phoenix_ecto, ">= 0.0.0"},
      {:decimal, ">= 0.0.0"},
      {:ecto_sql, ">= 0.0.0"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix_html, ">= 0.0.0"},
      {:phoenix_live_reload, ">= 0.0.0", only: :dev},
      {:gettext, ">= 0.0.0"},
      {:cowboy, ">= 0.0.0"},
      {:plug_cowboy, ">= 0.0.0"},
      {:absinthe, ">= 0.0.0"},
      {:absinthe_plug, ">= 0.0.0"},
      {:absinthe_phoenix, ">= 0.0.0"},
      {:absinthe_relay, ">= 0.0.0"}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
