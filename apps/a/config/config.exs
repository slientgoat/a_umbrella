use Mix.Config

config :a, ecto_repos: [A.Repo]

import_config "#{Mix.env}.exs"
