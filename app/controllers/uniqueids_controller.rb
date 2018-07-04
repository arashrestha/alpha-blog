class UniqueidsController < ApplicationController
    def new
        @uniqueid=Uniqueid.new
    end
end
