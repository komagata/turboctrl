require_relative 'turboctrl/version'
require_relative 'turboctrl/helper'
require_relative 'turboctrl/rails' if defined? Rails
require_relative 'turboctrl/railtie' if defined? Rails

module Turboctrl
end
