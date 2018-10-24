defmodule BWeb.PageController do
  use BWeb, :controller
  alias A.Companies
  def index(conn, _params) do
    companies = Companies.list_companies()
    render(conn, "index.json", companies: companies)
  end
end
