$LOAD_PATH << '.'
Dir["app/concerns/*.rb"].each {|f| require f}
Dir["app/models/*.rb"].each {|f| require f}

require_relative '../app/concerns/memorable'
require_relative '../app/concerns/findable'
require_relative '../app/concerns/createable'
