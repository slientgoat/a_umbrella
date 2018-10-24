defmodule A.Repo.Migrations.CreateCompanyWhitelists do
  use Ecto.Migration

  def change do
    create table(:company_whitelists) do
      add :ip, :string
      add :company_id, references(:companies, on_delete: :nothing)

      timestamps()
    end

    create index(:company_whitelists, [:company_id])
  end
end
