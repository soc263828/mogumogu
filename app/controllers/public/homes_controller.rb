class Public::HomesController < ApplicationController
  def top
    @recipe = Recipe.all
  end

  def about
  end

end
