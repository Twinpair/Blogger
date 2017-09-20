class Tag < ActiveRecord::Base
  default_scope -> { order(name: :asc) }
	has_many :taggings, dependent: :destroy
	has_many :articles, through: :taggings
end
