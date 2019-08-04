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

class Company < ApplicationRecord
    mount_uploader :image, ImageUploader
    validates :name, presence: true
    validates :occupation, presence: true
    validates :hope, presence: true, length: { maximum: 1000 }
    validates :outline, presence: true, length: { maximum: 1000 }
    validates :introduce, presence: true, length: { maximum: 1000 }
    validates :want, presence: true, length: { maximum: 1000 }
    validates :area, presence: true
    
    belongs_to :user
    has_many :members, dependent: :destroy, inverse_of: :company
    accepts_nested_attributes_for :members, allow_destroy: true
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    
    
    def search(search)
      if search
       Company.where(['occupation LIKE ?', "%#{occupation}%"],['area LIKE ?', "%#{area}%"])
      else
       Company.all
      end
    end
    

end
