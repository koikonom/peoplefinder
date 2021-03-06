require 'singleton'

class Home
  include Singleton
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  def persisted?
    true
  end

  def to_s
    'Home'
  end

  def self.path
    [instance]
  end
end
