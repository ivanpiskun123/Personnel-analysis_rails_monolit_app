class CandidatesController < ApplicationController

  def index

    @t_data = []

    Vacancy.all.each do |v|

      unless v.candidates.count == 0
            @t_data << [v, v.candidates.to_a]
      end

    end

    @c = Candidate.all

    @data_chart = [["AA", 10],["FD", 2],["dfdf",32]]
  end

  def new

  end


  def create

  end




end
