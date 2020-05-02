defmodule UsersCrud.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    # Definimos abaixo que a tabela "users", vai possuir as colunas:
    # first_name do tipo texto
    # last_name do tipo texto
    # email do tipo texto
    # age do tipo inteiro
    # timestamps que cria os campos inserted_at e updated_at
    create table(:users) do
      add(:first_name, :string)
      add(:last_name, :string)
      add(:email, :string)
      add(:age, :integer)
      timestamps()
    end
  end
end
