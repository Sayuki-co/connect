# == Schema Information
#
# Table name: connects
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company_user_id :integer
#  user_id         :integer
#
# Indexes
#
#  index_connects_on_user_id_and_company_user_id  (user_id,company_user_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Connect < ApplicationRecord
    belongs_to :user, :class_name => 'User'
    belongs_to :company_user, :class_name => 'User'
    has_many :comments, dependent: :destroy
    accepts_nested_attributes_for :comments, :allow_destroy => true
end
