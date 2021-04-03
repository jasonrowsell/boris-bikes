class ReleaseBikeError < StandardError
  attr_reader :msg

  def initialize(msg = 'Sorry mate, I\'m all out of bikes!')
    super(msg)
  end
end

class DockingError < StandardError
  attr_reader :msg

  def initialize(msg = 'Unlucky fella, I\'m biked to the max!')
    super(msg)
  end
end