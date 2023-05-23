# == Schema Information
#
# Table name: athors
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Athor < ApplicationRecord
  has_many :articles
end
