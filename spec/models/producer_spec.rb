# == Schema Information
#
# Table name: producers
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#

require 'rails_helper'

RSpec.describe Producer, type: :model do
  it {is_expected.to validate_presence_of(:name)}
  it {should have_and_belong_to_many(:animes)}
end
