
class DefaultURLStrategy
  attr_reader :path
  def self.url(path, format)
    self.new(path).send(format)
  end

  def initialize(path)
    @path = path
  end

  def default
    path
  end

  def short
    path
  end

  def embed
    path
  end
end
