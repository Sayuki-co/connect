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

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
