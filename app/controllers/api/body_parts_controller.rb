class Api::BodyPartsController < ApplicationController
    before_action :find_part_by_id, only: [:show, :update, :destroy]

    def find_part_by_id
        @body_part = BodyPart.find(params[:id])
    end

    def show
    end

    def index
        @body_parts = BodyPart.all
    end

    def create
        @body_part = BodyPart.new(body_part_params)
        if @body_part.save
            render :show
        else
            render json: @body_part.errors.full_messages, status: 422
        end
    end

    def update
        if @body_part.update(body_part_params)
            render :show
        else
            render json: @body_part.errors.full_messages, status: 422
        end
    end

    # Probably not going to include this one on the frontend
    def destroy
        if @body_part
            @body_part.destroy
            render :show
        else
            render json: ["Cannot find pin to destroy"], status: 404
        end
    end

    protected
    def body_part_params
        params.require(:body_part).permit(:name, :category)
    end
end