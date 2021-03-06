defmodule Hangman.Supervisor do
  use DynamicSupervisor

  def start_child() do
    DynamicSupervisor.start_child(Hangman.Supervisor, Hangman.Server)
  end

  def start_link(init_arg) do
    DynamicSupervisor.start_link(__MODULE__, init_arg, name: __MODULE__)
  end

  @impl true
  def init(_init_arg) do
    DynamicSupervisor.init(strategy: :one_for_one)
  end
end
