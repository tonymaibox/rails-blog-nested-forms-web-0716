class Tag < ActiveRecord::Base
  has_many :post_tags
  has_many :posts, :through => :post_tags

  validates_uniqueness_of :name
  # validates :name, presence: true
  # Remember, because we have a uniqueness validation on the name of tag, we will need to account for that; a user shouldn't have to submit a new tag every time they submit a post.
end
