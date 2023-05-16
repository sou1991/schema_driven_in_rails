# == Schema Information
#
# Table name: athors
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :athor do
    name { "MyString" }
  end
end
