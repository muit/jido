require "brain"
require "sense"
require "fragment"
require "db"

module Jido
  @@started = false

  def self.start
    @@brain = Brain.new
    @@db = DB.new DB::RedisAdapter, {}

    load_fragments
    load_objects

    @@started = true
  end

  def load_fragments
    #@@fragments = @@db.fragments.all
  end

  def load_objects
    #@@objects = @@db.objects.all
  end
  
  def self.is_started; @@started; end
  def self.brain; @@brain; end
  def self.db; @@db; end
end
