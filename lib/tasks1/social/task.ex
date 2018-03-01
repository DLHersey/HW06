defmodule Tasks1.Social.Task do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query
  alias Tasks1.Social.Task


  schema "tasks" do
    field :complete, :boolean, default: false
    field :description, :string
    field :taskname, :string
    field :timespent, :integer
    belongs_to :user, Tasks1.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(%Task{}= task, attrs) do
    task
    |> cast(attrs, [:complete, :description, :taskname, :timespent, :user_id])
    |> validate_required([:description, :taskname])
  end
end
