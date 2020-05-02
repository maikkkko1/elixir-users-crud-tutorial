defmodule UsersCrud do
  alias UsersCrud.Repo, as: DB

  import Ecto.Query

  @doc """
  Insere um novo usuário no banco de dados.

  ## Parameters

  - first_name: Primeiro nome do usuário.
  - last_name: Último nome do usuário.
  - email: E-mail do usuário.
  - age: Idade do usuário.
  """
  def insert(first_name, last_name, email, age) do
    user = %UsersCrud.User{first_name: first_name, last_name: last_name, email: email, age: age}

    user |> DB.insert()
  end

  @doc """
  Retorna todos os usúarios do banco de dados.
  """
  def read do
    DB.all(
      UsersCrud.User
      |> select([user], user)
      |> order_by(desc: :inserted_at)
    )
  end

  @doc """
  Retorna apenas um usuário do banco de dados.

  ## Parameters

  - id_user: ID do usuário.
  """
  def read(iduser) do
    DB.one(
      UsersCrud.User
      |> select([user], user)
      |> where([user], user.id == ^iduser)
    )
  end

  @doc """
  Atualiza os dados do usuário no banco de dados.

  ## Parameters

  - id_user: ID do usuário.
  - data: Struct com os dados a serem atualizados.
  """
  def update(iduser, data) do
    # Campos que podem ser atualizados.
    allowed_fields = [:first_name, :last_name, :email, :age]

    changes = Ecto.Changeset.cast(%UsersCrud.User{id: iduser}, data, allowed_fields)

    changes |> DB.update()
  end

  @doc """
  Remove um usuário banco de dados.

  ## Parameters

  - id_user: ID do usuário.
  """
  def delete(iduser) do
    %UsersCrud.User{id: iduser} |> DB.delete()
  end
end
