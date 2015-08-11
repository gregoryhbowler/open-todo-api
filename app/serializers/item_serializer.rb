# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  description :string
#  list_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ItemSerializer < ActiveModel::Serializer
  attributes :id
end
