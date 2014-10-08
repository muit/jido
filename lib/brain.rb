module Jido
  class Brain
    def initialize
      @senses = {};
    end

    def db; Jido.db; end

    def addSense name, sense
      if !@sense.name
        @senses.name = sense;
        return true
      else
        return false
      end
    end

    def save_sense_activity senses
      fragment = Fragment.new senses
      generate_fragment_links fragment
      db.add_fragment fragment
    end

    def gen_fragment_links fragment
      links = []
      # Will search for similar fragment sense datas
      # and link them.
      # Links will contain a similitude coef.
      #
      fragment.add_links links
      # return nil
    end
  end
end
