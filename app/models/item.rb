# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  description :string
#  list_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  completed   :boolean          default(FALSE)
#

class Item < ActiveRecord::Base
  belongs_to :list
end
