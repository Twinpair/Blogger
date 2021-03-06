class Comment < ActiveRecord::Base
  default_scope -> { order(created_at: :desc) }
  belongs_to :article
  validates :author_name, presence: {message: "is required"}, length: {maximum: 30}
  validates :body, presence: {message: "is required"}, length: {maximum: 200}
end
