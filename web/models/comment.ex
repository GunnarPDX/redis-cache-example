defmodule RedisCacheExample.Comment do
  use RedisCacheExample.Web, :model

  schema "comments" do
    belongs_to :post, RedisCacheExample.Post

    field :body, :string

    timestamps
  end

  @required_fields ~w(body)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:body, min: 1)
  end
end
