defmodule RedisCacheExample.Post do
  use RedisCacheExample.Web, :model

  alias RedisCacheExample.Repo

  schema "posts" do
    has_many :comments, RedisCacheExample.Comment

    field :title, :string
    field :body, :string

    timestamps
  end

  @required_fields ~w(title body)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:title, min: 1)
  end
end
