# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  title      :string
#  body       :text
#  athor_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Article, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
