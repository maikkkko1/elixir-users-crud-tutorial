use Mix.Config

config :users_crud, UsersCrud.Repo,
  adapter: Sqlite.Ecto2,

  # Nome do banco de dados.
  database: "users_crud_database.sqlite3"

config :users_crud, ecto_repos: [UsersCrud.Repo]
