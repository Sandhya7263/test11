require "fog/core"

module Fog
  module Rbvppc
    extend Fog::Provider
    service(:compute, "Compute")
  end
end