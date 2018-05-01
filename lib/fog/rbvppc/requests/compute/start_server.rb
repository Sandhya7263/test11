
module Fog
  module Compute
    class Rbvppc
      class Real
        def start_server(ipaddress)
          @hmc.connect
        end
      end
    end
  end
end
