defmodule PersistentStorage.Mixfile do
  use Mix.Project

  @version "0.10.1"

  def project do
    [
      app: :persistent_storage,
      version: @version,
      elixir: "~> 1.9",
      deps: deps(),
      description: "Simple file-based storage with caching layer for Nerves systems",
      package: package(),
      name: "PersistentStorage",
      source_url: "https://github.com/captchrisd/persistent_storage"
    ]
  end

  def application do
    [ mod: {PersistentStorage, []} ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.21.2", only: :dev, runtime: false}
    ]
  end

  defp package do
    [ maintainers: ["Garth Hitchens", "Chris Dutton"],
      licenses: ["Apache-2.0"],
      links: %{github: "https://github.com/captchrisd/persistent_storage"},
      files: ~w(lib config) ++ ~w(README.md CHANGELOG.md LICENSE mix.exs) ]
  end
end

