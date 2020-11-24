class MemoriesController < ApplicationController
  def index
    @memories = Memory.all
  end
end
