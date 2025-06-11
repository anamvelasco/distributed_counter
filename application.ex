defmodule DistributedCounter.Application do
  use Application

  def start(_type, _args) do
    children = [
      DistributedCounter.Counter,
      {DistributedCounter.AgentStore, 0}
    ]

    opts = [strategy: :one_for_one, name: DistributedCounter.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
