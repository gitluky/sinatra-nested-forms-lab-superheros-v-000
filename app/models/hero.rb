class Hero < ActiveRecord::Base

  belongs_to :team

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    @@all << self
  end

  def self.all
    @all
  end

end
