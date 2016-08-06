class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  #after_create :set_admin
  before_create :set_default_role
  #after_create :set_default_role
  private
  def set_default_role
    if User.count == 0
      self.role ||= Role.find_by_name('admin')
    else
    self.role ||= Role.find_by_name('customer')
    end
  end
end
