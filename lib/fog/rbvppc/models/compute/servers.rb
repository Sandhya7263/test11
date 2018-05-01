require "fog/core/collection"
require "fog/rbvppc/models/compute/server"

module Fog
  module Compute
    class Rbvppc
      class Servers < Fog::Collection
        model Fog::Compute::Rbvppc::Server


      end
    end
  end
end
