require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceClass
  extend Findable::ClassMethods
  include Paramable::InstanceClass

  attr_accessor :name
  attr_reader :artist

  @@songs = []


  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
