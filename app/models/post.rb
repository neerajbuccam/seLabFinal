class Post < ActiveRecord::Base
  has_attached_file :image, :styles => { medium: "800x800>", thumb: "100x100>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
  has_many :comments
  acts_as_votable
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true

end
