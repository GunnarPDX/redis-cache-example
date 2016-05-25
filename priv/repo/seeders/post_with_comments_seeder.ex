defmodule RedisCacheExample.PostWithCommentsSeeder do

  alias RedisCacheExample.Comment
  alias RedisCacheExample.Post
  alias RedisCacheExample.Repo

  def seed! do
    (1..250)
    |> Enum.map(fn (_x) -> seed_post end)
    |> Enum.each(fn (post) -> seed_comment(post) end)
  end

  defp seed_post do
    title = Faker.Name.title()
    body = Faker.Lorem.paragraph()
    Repo.insert!(%Post{title: title, body: body})
  end

  defp seed_comment(post) do
    text = Faker.Lorem.paragraph()
    Repo.insert!(%Comment{post: post, body: text})
  end
end
