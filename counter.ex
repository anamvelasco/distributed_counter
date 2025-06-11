defmodule DistributedCounter.Counter do
  use GenServer

  # Starts the GenServer and registers it with a name
  def start_link(initial_value \\ 0) do
    GenServer.start_link(__MODULE__, initial_value, name: __MODULE__)
  end

  # Client API to increment the counter
  def increment do
    GenServer.cast(__MODULE__, :increment)
  end

  # Client API to get the current count
  def get do
    GenServer.call(__MODULE__, :get)
  end

  # Server Callbacks
  def init(initial_value) do
    {:ok, initial_value}
  end

  def handle_cast(:increment, state) do
    {:noreply, state + 1}
  end

  def handle_call(:get, _from, state) do
    {:reply, state, state}
  end
end
