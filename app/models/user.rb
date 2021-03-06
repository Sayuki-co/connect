# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  name            :string(255)      not null
#  password_digest :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_name  (name) UNIQUE
#

class User < ApplicationRecord
  has_secure_password
  has_one :company, dependent: :destroy
  has_many :messages
  has_many :likes, dependent: :destroy
  has_many :companies, dependent: :destroy
  has_many :liked_companies, through: :likes, source: :company
  has_many :user_id, :class_name => 'Connect', :dependent => :destroy
  has_many :company_user_id, :class_name => 'Connect', :dependent => :destroy
  has_many :user_id, :through => :connects
  has_many :company_user_id, :through => :user_id
  
  validates :name,
    presence: true,
    uniqueness: true,
    length: { maximum: 16 },
    format: {
      with: /\A[a-z0-9]+\z/,
      message: 'は小文字英数字で入力してください'
    }
  validates :password,
    length: { minimum: 8 }
  validates :email,
    presence: true
 
 
end
