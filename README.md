# Distributed Counter with GenServer and Agent

This Elixir application implements a distributed counter using OTP constructs: `GenServer` for controlled concurrency and `Agent` for lightweight state management.

## Features
- Increment and retrieve counter values
- Implements both GenServer and Agent
- Supervised using OTP `Application`

## Technologies Used
- Elixir
- OTP (GenServer, Agent)
- Supervisor

## Setup Instructions

### 1. Create Project
```
mix new distributed_counter --sup
cd distributed_counter
```

### 2. Add Code
Place the modules inside `lib/distributed_counter/`.

### 3. Run Application in IEx
```
iex -S mix
```

Inside IEx:
```elixir
DistributedCounter.Counter.increment()
DistributedCounter.Counter.get()

DistributedCounter.AgentStore.increment()
DistributedCounter.AgentStore.get()
```

## Testing

### Add test file: `test/distributed_counter_test.exs`

### Run Tests
```
mix test
```

## License
MIT
