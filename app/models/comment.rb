# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  comment    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  connect_id :integer
#  user_id    :integer
#
# Indexes
#
#  index_comments_on_connect_id  (connect_id)
#  index_comments_on_user_id     (user_id)
#

class Comment < ApplicationRecord
    belongs_to :connect, optional: true
    
end
