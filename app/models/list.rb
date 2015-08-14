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

class List < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :items

  validate :permission_valid

  def permission_valid
    valid_permissions = %w(private open viewable)
    if !valid_permissions.include?(permission)
      errors.add(:permission, "invalid permission")
    end
  end

end
