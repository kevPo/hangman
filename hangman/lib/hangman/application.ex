defmodule Hangman.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      worker(Hangman.Server, [])
    ]

    options = [strategy: :simple_one_for_one, name: Hangman.Supervisor]
    Supervisor.start_link(children, options)
  end
end
