defmodule Hangman.Application do
  use Application

  @impl true
  def start(_type, _args) do
    Hangman.Supervisor.start_link(name: Hangman.Supervisor)
  end
end
