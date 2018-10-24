defmodule A.Companies do
  @moduledoc """
  The Companies context.
  """

  import Ecto.Query, warn: false
  alias A.Repo

  alias A.Companies.Company

  @doc """
  Returns the list of companies.

  ## Examples

      iex> list_companies()
      [%Company{}, ...]

  """
  def list_companies do
    Repo.all(Company)
  end

  @doc """
  Gets a single company.

  Raises `Ecto.NoResultsError` if the Company does not exist.

  ## Examples

      iex> get_company!(123)
      %Company{}

      iex> get_company!(456)
      ** (Ecto.NoResultsError)

  """
  def get_company!(id), do: Repo.get!(Company, id)

  @doc """
  Creates a company.

  ## Examples

      iex> create_company(%{field: value})
      {:ok, %Company{}}

      iex> create_company(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_company(attrs \\ %{}) do
    %Company{}
    |> Company.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a company.

  ## Examples

      iex> update_company(company, %{field: new_value})
      {:ok, %Company{}}

      iex> update_company(company, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_company(%Company{} = company, attrs) do
    company
    |> Company.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Company.

  ## Examples

      iex> delete_company(company)
      {:ok, %Company{}}

      iex> delete_company(company)
      {:error, %Ecto.Changeset{}}

  """
  def delete_company(%Company{} = company) do
    Repo.delete(company)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking company changes.

  ## Examples

      iex> change_company(company)
      %Ecto.Changeset{source: %Company{}}

  """
  def change_company(%Company{} = company) do
    Company.changeset(company, %{})
  end

  alias A.Companies.CompanyWhitelist

  @doc """
  Returns the list of company_whitelists.

  ## Examples

      iex> list_company_whitelists()
      [%CompanyWhitelist{}, ...]

  """
  def list_company_whitelists do
    Repo.all(CompanyWhitelist)
  end

  @doc """
  Gets a single company_whitelist.

  Raises `Ecto.NoResultsError` if the Company whitelist does not exist.

  ## Examples

      iex> get_company_whitelist!(123)
      %CompanyWhitelist{}

      iex> get_company_whitelist!(456)
      ** (Ecto.NoResultsError)

  """
  def get_company_whitelist!(id), do: Repo.get!(CompanyWhitelist, id)

  @doc """
  Creates a company_whitelist.

  ## Examples

      iex> create_company_whitelist(%{field: value})
      {:ok, %CompanyWhitelist{}}

      iex> create_company_whitelist(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_company_whitelist(attrs \\ %{}) do
    %CompanyWhitelist{}
    |> CompanyWhitelist.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a company_whitelist.

  ## Examples

      iex> update_company_whitelist(company_whitelist, %{field: new_value})
      {:ok, %CompanyWhitelist{}}

      iex> update_company_whitelist(company_whitelist, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_company_whitelist(%CompanyWhitelist{} = company_whitelist, attrs) do
    company_whitelist
    |> CompanyWhitelist.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a CompanyWhitelist.

  ## Examples

      iex> delete_company_whitelist(company_whitelist)
      {:ok, %CompanyWhitelist{}}

      iex> delete_company_whitelist(company_whitelist)
      {:error, %Ecto.Changeset{}}

  """
  def delete_company_whitelist(%CompanyWhitelist{} = company_whitelist) do
    Repo.delete(company_whitelist)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking company_whitelist changes.

  ## Examples

      iex> change_company_whitelist(company_whitelist)
      %Ecto.Changeset{source: %CompanyWhitelist{}}

  """
  def change_company_whitelist(%CompanyWhitelist{} = company_whitelist) do
    CompanyWhitelist.changeset(company_whitelist, %{})
  end
end
