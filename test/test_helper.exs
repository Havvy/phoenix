Code.require_file("conn_helper.exs", __DIR__)

# Disable code reloader because we don't want
# test routers to be using it by default.
Application.put_env(:phoenix, :code_reloader, false)

# Get Mix output sent to the current process to
# avoid polluting tests.
Mix.shell(Mix.Shell.Process)

# Used whenever a router fails. We default to simply
# rendering a short string.
defmodule Phoenix.ErrorView do
  def render(template, _assigns) do
    "#{template} from Phoenix.ErrorView"
  end
end

ExUnit.start()
