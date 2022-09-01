class MainController < ApplicationController
  def test
  
  end

  def test_post
    @subject1 = params[:subject1]
    @subject2 = params[:subject2]
    @subject3 = params[:subject3]

    @score1 = params[:score1]
    @score2 = params[:score2]
    @score3 = params[:score3]

    @total_score = @score1.to_i + @score2.to_i + @score3.to_i

    if @score1.to_i > @score2.to_i && @score1.to_i > @score3.to_i
      @max_score = @subject1
    elsif @score2.to_i > @score3.to_i && @score2.to_i > @score1.to_i
      @max_score = @subject2
    else 
      @max_score = @subject3
    end

  end

end
