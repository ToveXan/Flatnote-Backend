class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :user_id
  belongs_to :user
end
