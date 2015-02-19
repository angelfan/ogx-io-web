class Elite::Node
  include Mongoid::Document
  include Mongoid::Timestamps

  include Nodable
  include SoftDeletable

  field :t, as: :title, type: String

  belongs_to :board
  belongs_to :moderator, class_name: "User"
end
