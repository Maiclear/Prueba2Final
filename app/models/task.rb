class Task < ActiveRecord::Base

  before_save :default_role

  belongs_to :user
  belongs_to :proyect

  validates :name, presence:true

  enum role: [:todo, :doing, :done]

  def default_role
    self.role ||= 0
    true
  end
end
