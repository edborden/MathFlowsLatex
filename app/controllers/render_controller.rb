class RenderController < ApplicationController

	def render

		send_data rendered[:data],filename:"equation.png"

	end

	def mathematical_options
		{
			ppi: 300.0,
			zoom: 0.25,
			format: :png
		}
	end

	def renderer
		@renderer ||= Mathematical.new mathematical_options
	end

	def rendered
		@rendered ||= renderer.render params[:math]
	end

end