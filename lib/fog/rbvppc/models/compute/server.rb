require "fog/compute/models/server"
require "tempfile"

module Fog
  module Compute
    class Rbvppc
      class Server < Fog::Compute::Server
        puts "skdfsdkfjsdfs"
        # attr names are from rbvppc

        identity :vm_name
        attribute :ipaddress
        attribute :hostname
        attribute :cloud_service_name


         #helper functions for more common fog names

        def start
          requires :ipaddress

          service.start_server(ipaddress)
        end

        def external_ip
          ipaddress
        end

        def public_ip_address
          ipaddress
        end

        def name
          vm_name
        end

        def start
          requires :vm_name
          requires :cloud_service_name

          service.start_server(vm_name, cloud_service_name)
        end

      end
    end
  end  
end

