class PromotionsController < ApplicationController
# respond_to :html, :js

	def index
	@promotions = Promotion.all
	end

	def new
@promotion = Promotion.new
	end

	def create
	@promotion = Promotion.create!(promotion_params)
	respond_to do |format|
		format.html{redirect_to promotions_path}
		format.js
	end
	end

	def edit
	end

	def update
	end

	def destroy
		@promotion = Promotion.destroy(params[:id])
	respond_to do |format|
		format.html{redirect_to promotions_path}
		format.js
	end

	end

	private

	def promotion_params
params.require(:promotion).permit(:header, :subheader, :is_active)
	end
end
