defmodule A.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add :prefix, :string
      add :name, :string
      add :secret, :string
      add :origin, :string

      timestamps()
    end

    create unique_index(:companies, [:prefix])
    create unique_index(:companies, [:name])
    create unique_index(:companies, [:secret])
  end
end
