defmodule A.Companies.CompanyWhitelist do
  use Ecto.Schema
  import Ecto.Changeset


  schema "company_whitelists" do
    field :ip, :string
    field :company_id, :id

    timestamps()
  end

  @doc false
  def changeset(company_whitelist, attrs) do
    company_whitelist
    |> cast(attrs, [:ip])
    |> validate_required([:ip])
  end
end
