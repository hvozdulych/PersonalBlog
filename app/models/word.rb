class Word < ActiveRecord::Base
  attr_accessible :meaning, :spelling

  validates :meaning, :spelling, presence: true, uniqueness: { case_sensitive: false, message: "word already excist" }
end
