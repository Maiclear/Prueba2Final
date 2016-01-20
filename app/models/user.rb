class User < ActiveRecord::Base
  # Include default devise modules. Others available are:


  before_save :default_role

  has_many :proyects, dependent: :destroy
  has_many :tasks, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :name, presence:true
  validates :lastname, presence:true





  enum role: [:admin, :owner, :guest]

  def default_role
    self.role ||= 1
    true
  end

  def to_s
    "#{self.name} #{self.lastname}"
  end


end
