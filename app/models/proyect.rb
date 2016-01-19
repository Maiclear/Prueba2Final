class Proyect < ActiveRecord::Base
  belongs_to :user

  has_many :tasks, dependent: :destroy

  validates :name, presence:true


  def to_s
    "#{self.name}"
  end
end
