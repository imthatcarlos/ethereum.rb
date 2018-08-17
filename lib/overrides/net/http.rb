module Net
  class HTTP < Protocol
    alias_method :old_initialize, :initialize

    # allowing for override of open_timeout
    def initialize(address, port = nil, open_timeout: 300)
      old_initialize(address, port)
      self.open_timeout = open_timeout
    end
  end
end
