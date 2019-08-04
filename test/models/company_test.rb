# == Schema Information
#
# Table name: companies
#
#  id          :integer          not null, primary key
#  area        :string(255)
#  hope        :text(65535)
#  image       :string(255)
#  introduce   :text(65535)
#  likes_count :integer
#  message     :text(65535)
#  name        :string(255)
#  occupation  :string(255)
#  outline     :text(65535)
#  want        :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
