class PagesController < ApplicationController
    def home
        @random_memory = Memory.find(3)
    end    
end
