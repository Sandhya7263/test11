require "fog/rbvppc/core"
module Fog
  module Compute
    class Rbvppc < Fog::Service
      # requires  :hmc_domain_name
#     requires  :nim_domain_name
      requires :ipaddress
      request_path "fog/rbvppc/requests/compute"
      request :start_server

      model_path "fog/rbvppc/models/compute"
      model :server
      collection :servers

      class Mock
        def initialize(options={})
          begin
            require "rbvppc"
          rescue LoadError => e
            retry if require("rubygems")
            raise e.message
          end
        end
      end 

      class Real
        def initialize(options)
          begin
            require "rbvppc"
          rescue LoadError => e 
            retry if require("rubygems")
            raise e.message
          end 
            @hmc_domain_name = options[:ipaddress]
          # cfg.nim_domain_name = options[:nim_domain_name]
          @hmc = Hmc.new(@hmc_domain_name,"hscroot", {:password => "root"})
          puts @hmc.inspect
        end
      end

    end
  end
end
