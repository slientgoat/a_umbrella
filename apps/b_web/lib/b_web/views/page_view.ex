defmodule BWeb.PageView do
  use BWeb, :view

  def render("index.json", %{companies: companies}) do
    %{data: render_many(companies, CompanyView, "company.json")}
  end

  def render("show.json", %{company: company}) do
    %{data: render_one(company, CompanyView, "company.json")}
  end

  def render("company.json", %{company: company}) do
    %{id: company.id,
      prefix: company.prefix,
      name: company.name,
      secret: company.secret,
      origin: company.origin}
  end
end
