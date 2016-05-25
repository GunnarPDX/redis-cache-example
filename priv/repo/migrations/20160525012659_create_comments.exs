defmodule RedisCacheExample.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :body, :text, null: false
      add :post_id, references(:posts)

      timestamps
    end
    create index(:comments, [:post_id])
  end
end
