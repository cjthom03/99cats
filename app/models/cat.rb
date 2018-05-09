# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view'

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  COLORS = ['Blue', 'Brown', 'Yellow', 'Black', 'Orange', 'White']

  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: { in: COLORS, message: "%{value} is not a valid cat color." }
  validates :sex, inclusion: { in: ['M', 'F'], message: '%{value} is not a valid sex.' }

  def age
    time_ago_in_words(self.birth_date)
  end

end
