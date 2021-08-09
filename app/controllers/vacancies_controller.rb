class VacanciesController < ApplicationController

  @@after_sign_in = true

  def index
    @flag_joke = @@after_sign_in
    @@after_sign_in = false
    puts '\n\n\n'
    p @flag_joke
  end


end
