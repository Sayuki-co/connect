# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  image      :string(255)
#  message    :text(65535)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :integer
#
# Indexes
#
#  index_members_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
