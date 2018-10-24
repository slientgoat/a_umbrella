defmodule A.CompaniesTest do
  use A.DataCase

  alias A.Companies

  describe "companies" do
    alias A.Companies.Company

    @valid_attrs %{name: "some name", origin: "some origin", prefix: "some prefix", secret: "some secret"}
    @update_attrs %{name: "some updated name", origin: "some updated origin", prefix: "some updated prefix", secret: "some updated secret"}
    @invalid_attrs %{name: nil, origin: nil, prefix: nil, secret: nil}

    def company_fixture(attrs \\ %{}) do
      {:ok, company} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Companies.create_company()

      company
    end

    test "list_companies/0 returns all companies" do
      company = company_fixture()
      assert Companies.list_companies() == [company]
    end

    test "get_company!/1 returns the company with given id" do
      company = company_fixture()
      assert Companies.get_company!(company.id) == company
    end

    test "create_company/1 with valid data creates a company" do
      assert {:ok, %Company{} = company} = Companies.create_company(@valid_attrs)
      assert company.name == "some name"
      assert company.origin == "some origin"
      assert company.prefix == "some prefix"
      assert company.secret == "some secret"
    end

    test "create_company/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Companies.create_company(@invalid_attrs)
    end

    test "update_company/2 with valid data updates the company" do
      company = company_fixture()
      assert {:ok, company} = Companies.update_company(company, @update_attrs)
      assert %Company{} = company
      assert company.name == "some updated name"
      assert company.origin == "some updated origin"
      assert company.prefix == "some updated prefix"
      assert company.secret == "some updated secret"
    end

    test "update_company/2 with invalid data returns error changeset" do
      company = company_fixture()
      assert {:error, %Ecto.Changeset{}} = Companies.update_company(company, @invalid_attrs)
      assert company == Companies.get_company!(company.id)
    end

    test "delete_company/1 deletes the company" do
      company = company_fixture()
      assert {:ok, %Company{}} = Companies.delete_company(company)
      assert_raise Ecto.NoResultsError, fn -> Companies.get_company!(company.id) end
    end

    test "change_company/1 returns a company changeset" do
      company = company_fixture()
      assert %Ecto.Changeset{} = Companies.change_company(company)
    end
  end

  describe "company_whitelists" do
    alias A.Companies.CompanyWhitelist

    @valid_attrs %{ip: "some ip"}
    @update_attrs %{ip: "some updated ip"}
    @invalid_attrs %{ip: nil}

    def company_whitelist_fixture(attrs \\ %{}) do
      {:ok, company_whitelist} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Companies.create_company_whitelist()

      company_whitelist
    end

    test "list_company_whitelists/0 returns all company_whitelists" do
      company_whitelist = company_whitelist_fixture()
      assert Companies.list_company_whitelists() == [company_whitelist]
    end

    test "get_company_whitelist!/1 returns the company_whitelist with given id" do
      company_whitelist = company_whitelist_fixture()
      assert Companies.get_company_whitelist!(company_whitelist.id) == company_whitelist
    end

    test "create_company_whitelist/1 with valid data creates a company_whitelist" do
      assert {:ok, %CompanyWhitelist{} = company_whitelist} = Companies.create_company_whitelist(@valid_attrs)
      assert company_whitelist.ip == "some ip"
    end

    test "create_company_whitelist/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Companies.create_company_whitelist(@invalid_attrs)
    end

    test "update_company_whitelist/2 with valid data updates the company_whitelist" do
      company_whitelist = company_whitelist_fixture()
      assert {:ok, company_whitelist} = Companies.update_company_whitelist(company_whitelist, @update_attrs)
      assert %CompanyWhitelist{} = company_whitelist
      assert company_whitelist.ip == "some updated ip"
    end

    test "update_company_whitelist/2 with invalid data returns error changeset" do
      company_whitelist = company_whitelist_fixture()
      assert {:error, %Ecto.Changeset{}} = Companies.update_company_whitelist(company_whitelist, @invalid_attrs)
      assert company_whitelist == Companies.get_company_whitelist!(company_whitelist.id)
    end

    test "delete_company_whitelist/1 deletes the company_whitelist" do
      company_whitelist = company_whitelist_fixture()
      assert {:ok, %CompanyWhitelist{}} = Companies.delete_company_whitelist(company_whitelist)
      assert_raise Ecto.NoResultsError, fn -> Companies.get_company_whitelist!(company_whitelist.id) end
    end

    test "change_company_whitelist/1 returns a company_whitelist changeset" do
      company_whitelist = company_whitelist_fixture()
      assert %Ecto.Changeset{} = Companies.change_company_whitelist(company_whitelist)
    end
  end
end
