class Article < ActiveRecord::Base
  has_many :comments
                    
  attr_accessible :body, :title
  validates :body, :title, presence: true, length: { minimum: 5 }
end
