class Api::BodyPartsController < ApplicationController

    def show
        @body_part = BodyPart.find(params[:id])
    end

    def index
        @body_parts = BodyPart.all
    end

end