class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  after_initialize :default_admin

  def mood
    self.nausea < self.happiness ? "happy" : "sad"
  end

  def admin?
    self.admin == true
  end

  private

  def default_admin
    self.admin ||= false

  end
end
