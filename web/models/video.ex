defmodule Lensformation.Video do
  use Lensformation.Web, :model

  schema "videos" do
    field :url, :string
    field :title, :string
    field :description, :string
    belongs_to :user, Lensformation.User
    belongs_to :category, Lensformation.Category

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:url, :title, :description])
    |> validate_required([:url, :title, :description])
  end
end
