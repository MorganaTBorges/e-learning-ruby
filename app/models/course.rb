class Course < ApplicationRecord
  validates_presence_of :title, :description
  validates_length_of :description, minimum: 5
  
  belongs_to :user
  has_rich_text :description
  def to_s
    title
  end
end
