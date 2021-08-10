class CandidatesController < ApplicationController

  def index

    if params[:filter].nil?
      if params[:vacancy_id].nil?
        @prefix = "Все"
        @c = Candidate.all
      else
        @c = Candidate.where(vacancy_id: params[:vacancy_id].to_i)
        @prefix = "\"#{Vacancy.find(params[:vacancy_id].to_i).position.name}\""
      end

    else
      case  params[:filter]
      when "rejected"
        @c = Candidate.where(status: 0)
        @prefix = "Отклонённые"
      when "reviewed"
        @c = Candidate.where(status: 1)
        @prefix = "Рассматриваемые"
      when "accepted"
        @c = Candidate.where(status: 2)
        @prefix = "Принятые"
      end
    end

    @cr = Criterium.all
    @v = Vacancy.all

    @data_chart = [["Приняты", Candidate.accepted.count],
    ["Отклонены",Candidate.rejected.count],
    ["Рассматриваются", Candidate.reviewed.count]]

  end

  def new

  end


  def create

    print params

    if params[:gender]=="male"
      male = true
    else
      male = false
    end

    @c = Candidate.new(
      user: current_user,
      first_name: params[:first_name],
      second_name: params[:second_name],
      email: params[:email],
      number: params[:number],
      expirience_years: params[:exp].to_f,
      biography: params[:bio],
      gender: male,
      status: 1,
      vacancy: Position.find_by_name(params[:vacancy_name]).vacancies.first
    )
    @c.avatar = params[:candidate][:avatar]
    @c.save

    Criterium.all.each_with_index do |c, idx|
      CandidateCriteriumScore.create(
        score: params["criterium_#{idx+1}"].to_i,
        candidate: Candidate.last,
        criterium: c
      )
    end

    redirect_to candidates_path



  end




end
