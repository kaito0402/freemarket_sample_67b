# == Schema Information
#
# Table name: sns_credentials
#
#  id         :integer          not null, primary key
#  provider   :string(255)      not null
#  uid        :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_sns_credentials_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class SnsCredential < ApplicationRecord
  belongs_to :user, optional: true

  validates :provider, presence: true
  validates :uid,      presence: true
end
