module Findable
  module ClassMethods
    def find_by_name(name)
      all.detect { |a| a.name }
    end
  end
end
