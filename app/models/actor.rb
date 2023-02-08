# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
#end

  #attr_accessor :first_name
  #attr_accessor :last_name
  #attr_accessor :role
end
#c = Actor.new
#c.first_name = "Raghu"
#c.last_name = "Betina"
#c.role = "Instructor"
