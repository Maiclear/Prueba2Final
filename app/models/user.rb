class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_save :default_role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :name, presence:true
  validates :lastname, presence:true
  validates :avatar




  enum role: [:admin, :owner, :guest]

  def default_role
    self.role ||= 1
  end

  def to_s
    "#{self.name} #{self.lastname}"
  end


end
