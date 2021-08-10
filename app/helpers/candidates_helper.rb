module CandidatesHelper
  def humanize_status
      case self.status
      when 1
         "Отклонён"
      when 2
        "Рассматривается"
      when 3
         "Принят"
      else
       "Error case in candidate helper"
      end
  end
end
