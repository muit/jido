
require "brain"
require "sense"
require "fragment"
require "db"

module Jido
  @@started = false

  def self.start
    @@brain = Brain.new
    @@db = DB.new DB::RedisAdapter, {}
    @@started = true
  end

  def self.is_started; @@started; end
  def self.brain; @@brain; end
  def self.db; @@db; end
end

