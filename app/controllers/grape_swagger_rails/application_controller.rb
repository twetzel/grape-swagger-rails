module GrapeSwaggerRails
  class ApplicationController < ActionController::Base
    before_filter do
      if GrapeSwaggerRails.options.before_filter
        instance_exec(request, &GrapeSwaggerRails.options.before_filter)
      end
    end

    def index
      
      # => @host_name = request.host_with_port
      @host_name = "#{ request.protocol }#{ request.host }#{ request.port.to_i == 80 ? "" : ":#{request.port}" }"
      
    end
  end
end
