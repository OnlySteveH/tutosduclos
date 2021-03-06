class Tuto < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  belongs_to :category
  validates :category_id, presence: true



  def self.search(search)
    if search
     where(["title LIKE ?","%#{search}%"]).order('created_at DESC')
    else
      all
    end
  end

end

