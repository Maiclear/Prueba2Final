class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :proyect

  validates :name, presence:true
end
