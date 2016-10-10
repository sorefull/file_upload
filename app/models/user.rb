# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  avatar     :string
#

class User < ApplicationRecord
  mount_uploader :avatar, AttachmentUploader
  has_many :posts, dependent: :destroy
end
