class User < ApplicationRecord
  rolify
  after_create :assign_default_role
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  private

  def assign_default_role
    add_role(:user) if roles.blank?
  end
end
