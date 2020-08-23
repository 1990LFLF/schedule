class Schedule

  def initialize(work_time, start_time, total_time)
    @work_time = work_time
    @total_time = total_time
    @start_time = start_time
  end 

  def create
    # com base nos parâmetros, criar array de tasks, com hora de início, hora fim, descrição             
# possibilitar consultar detalhamento, se houver
    # cada
  end

  def refresh #roda novamente
    create
  end

end
