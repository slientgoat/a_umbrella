defmodule A.Application do
  @moduledoc """
  The A Application Service.

  The a system business domain lives in this application.

  Exposes API to clients such as the `AWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(A.Repo, []),
    ], strategy: :one_for_one, name: A.Supervisor)
  end
end
