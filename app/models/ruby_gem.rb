# == Schema Information
#
# Table name: ruby_gems
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  info       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class RubyGem < ActiveRecord::Base
  def initialize
    response = HTTParty.get("https://rubygems.org/api/v1/gems/rails.json")
  end
end
