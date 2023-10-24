class NotifyComponent < ViewComponent::Base
  def initialize(timeout: 2000)
    super
    @timeout = timeout
  end
end
