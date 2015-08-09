module Createable
  module ClassMethods
    def create_by_name(name)
      self.new(name)
    end
  end
end
