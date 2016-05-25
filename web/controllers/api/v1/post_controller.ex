defmodule RedisCacheExample.Api.V1.PostController do
  use RedisCacheExample.Web, :controller

  alias RedisCacheExample.Post
  alias RedisCacheExample.Repo

  def index(conn, _params) do
    posts = Repo.all(from p in Post, preload: [:comments])
    conn
    |> put_status(200)
    |> json(posts)
  end
end
