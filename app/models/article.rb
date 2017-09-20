class Article < ActiveRecord::Base
  default_scope -> { order(created_at: :desc) }
	has_many :comments, dependent: :destroy
	has_many :taggings, dependent: :destroy
	has_many :tags, through: :taggings
	mount_uploader :image, ArticleUploader
	validates :author_name, presence: {message: "is required"}, length: {maximum: 30}
	validates :title, presence: {message: "is required"}, length: {maximum: 230}
	validates :body, presence: {message: "is required"}, length: {maximum: 1600}
	validates :tag_list, length: {maximum: 230}
	validate  :image_size

	def tag_list=(tags_string)
		tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
		new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
  		self.tags = new_or_found_tags
	end

	def tag_list
		self.tags.collect do |tag|
			tag.name
		end.join(", ")
	end

private

  # Validates the size of an uploaded image.
  def image_size
    if image.size > 5.megabytes
      errors.add(:image, "(Select image with smaller file size)")
    end
  end

end
