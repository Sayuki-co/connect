# == Schema Information
#
# Table name: likes
#
#  id          :integer          not null, primary key
#  likes_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :integer          not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_likes_on_company_id              (company_id)
#  index_likes_on_user_id                 (user_id)
#  index_likes_on_user_id_and_company_id  (user_id,company_id) UNIQUE
#

class Like < ApplicationRecord
    belongs_to :user
    belongs_to :company, counter_cache: :likes_count
    validates :user_id, presence: true
    validates :company_id, presence: true
    validates_uniqueness_of :company_id, scope: :user_id
end
