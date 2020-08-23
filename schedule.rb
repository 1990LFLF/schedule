require 'date'

attr_accessor :options, :date

class Schedule
  def initialize(repository, options = { work_time: nil, start_time: nil, total_time: nil })
    @options = options
    @date = Date.today
    @repo = repository
  end

  def create
    # com base nos parametros, criar array de tasks, com hora de inicio, hora fim
    # possibilitar consultar detalhamento, se houver
    # cada
  end

  def refresh
    create
  end
end
