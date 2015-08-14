# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  title      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  permission :string           default("private")
#

class ListSerializer < ActiveModel::Serializer
  attributes :id
end
