# == Schema Information
#
# Table name: adverts
#
#  id          :integer          not null, primary key
#  unit        :string(255)
#  title       :string(255)
#  description :text
#  content     :text
#  draft       :boolean          default(TRUE)
#  archive     :boolean          default(FALSE)
#  admin_ads   :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Advert < ActiveRecord::Base
  attr_accessible :archive, :content, :description, :draft, :title
  validates :description, presence: true, length: { maximum: 350 }
  validates :content, presence: true
  validates :title, presence: true, length: { maximum: 50 }
end
