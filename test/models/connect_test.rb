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

require 'test_helper'

class ConnectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
