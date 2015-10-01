class RenderController < ApplicationController

	def render

		p rendered
		send_data rendered[:data]

	end

	def mathematical_options
		{
			ppi: 300.0,
			zoom: 0.25,
			format: :png
		}
	end

	def renderer
		@renderer ||= Mathematical.new# mathematical_options
	end

	def rendered
		@rendered ||= renderer.render params[:math]
	end

end