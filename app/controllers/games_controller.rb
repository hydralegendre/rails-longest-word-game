class GamesController < ApplicationController
  LETTERS = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  def new
    @letters = LETTERS.sample(10)
  end

  def score
    @scenario = ''
    @url = ''
    array_letter = params[:word].chars
    unless array_letter.all? { |letter| params[:grid].include?(letter) }
      @scenario = 'out of grid'
    end
  end

  #   The word is valid, but not an english word.

  #   The word is valid & is an english word.
end
