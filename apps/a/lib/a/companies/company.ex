defmodule A.Companies.Company do
  use Ecto.Schema
  import Ecto.Changeset


  schema "companies" do
    field :name, :string
    field :origin, :string
    field :prefix, :string
    field :secret, :string

    timestamps()
  end

  @doc false
  def changeset(company, attrs) do
    company
    |> cast(attrs, [:prefix, :name, :secret, :origin])
    |> validate_required([:prefix, :name, :secret, :origin])
    |> unique_constraint(:prefix)
    |> unique_constraint(:name)
    |> unique_constraint(:secret)
  end
end
