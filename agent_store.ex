defmodule DistributedCounter.AgentStore do
  def start_link(initial_value \\ 0) do
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
  end

  def increment do
    Agent.update(__MODULE__, &(&1 + 1))
  end

  def get do
    Agent.get(__MODULE__, & &1)
  end
end
