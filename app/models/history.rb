class History < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :illness_category, :illness_type, :date

end
