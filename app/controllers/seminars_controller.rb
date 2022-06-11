class SeminarsController < ApplicationController
    before_action :authenticate_user!, except: []
    def index
        @seminars = Seminar.order(:id)
      end
    
      def show
        @seminar = Seminar.find(params[:id])
      end
    
      def new
        @seminar = Seminar.new
      end
    
      def create
        @seminar = Seminar.new(seminar_params)
    
        if @seminar.save
          redirect_to @seminar
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      def edit
        @seminar = Seminar.find(params[:id])
      end
    
      def update
        @seminar = Seminar.find(params[:id])
    
        if @seminar.update(seminar_params)
          redirect_to @seminar
        else
          render :edit, status: :unprocessable_entity
        end
      end
    
      def destroy
        @seminar = Seminar.find(params[:id])
        @seminar.destroy
    
        redirect_to root_path, status: :see_other
      end
    
      private
        def seminar_params
          params.require(:seminar).permit(:month, :day, :youbi, :title1, :title2, :title3, :title4,
           :name11, :name12, :name13, :name14, :name15, :name21, :name22, :name23, :name24, :name25,
           :name31, :name32, :name33, :name34, :name35, :name41, :name42, :name43, :name44, :name45)
        end


end
