class Course < ApplicationRecord
  validates_presence_of :title, :description
  validates_length_of :description, minimum: 5
  has_rich_text :description
  def to_s
    title
  end
end
