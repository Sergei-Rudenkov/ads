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

require 'spec_helper'

describe Advert do
  pending "add some examples to (or delete) #{__FILE__}"
end
