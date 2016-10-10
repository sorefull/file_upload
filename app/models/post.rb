# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string
#

class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, AttachmentUploader

end
