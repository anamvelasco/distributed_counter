defmodule DistributedCounterTest do
  use ExUnit.Case

  test "GenServer counter increments and retrieves value" do
    DistributedCounter.Counter.increment()
    DistributedCounter.Counter.increment()
    assert DistributedCounter.Counter.get() >= 2
  end

  test "Agent counter increments and retrieves value" do
    DistributedCounter.AgentStore.increment()
    DistributedCounter.AgentStore.increment()
    assert DistributedCounter.AgentStore.get() >= 2
  end
end
