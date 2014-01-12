class BeansController < ApplicationController
	def new

	end
	def create
		@bean = Bean.new(post_params)
		if @bean.save
			redirect_to @bean
		else
			render 'new'
		end
	end

	def show
		@bean = Bean.find(params[:id])
	end

	def index
		@beans = Bean.all
		
	end

	def edit
		@bean = Bean.find(params[:id])
	end

	def update
		@bean = Bean.find(params[:id])

		if @bean.update(post_params)
			redirect_to @bean
		else
			render 'edit'
		end
	end

	def destroy
		@bean = Bean.find(params[:id])
		@bean.destroy

		redirect_to beans_path
	end

	private
		def post_params
			params.require(:bean).permit(:title, :description, :location)
		end
end
