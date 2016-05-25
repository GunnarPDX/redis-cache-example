defmodule RedisCacheExample.PageController do
  use RedisCacheExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
