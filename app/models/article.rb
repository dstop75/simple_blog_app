class Article < ActiveRecord::Base
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_many :links, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
