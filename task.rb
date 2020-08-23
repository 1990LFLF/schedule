class Task
  attr_accessor :options
  attr_reader :status

  def initialize(options = { name: nil, description: nil, date: nil, duration: nil, type: nil, priority: nil })
    @options = options
    @status = 'to do'
  end

  def mark_as_done!
    @status = 'done'
  end

  def mark_as_doing!
    @status = 'doing'
  end

  def update(options = { name: nil, description: nil, date: nil, duration: nil, type: nil, priority: nil })
    options.each { |k, v| @options[k] = v unless v.nil? }
    self
  end
end
