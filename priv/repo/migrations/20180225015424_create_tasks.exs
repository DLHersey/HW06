defmodule Tasks1.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :taskname, :text, null: false
      add :description, :text, null: false
      add :timespent, :integer
      add :complete, :boolean, default: false, null: false
      add :user_id, references(:users, on_delete: :nilify_all)

      timestamps()
    end

    create index(:tasks, [:user_id])
  end
end
