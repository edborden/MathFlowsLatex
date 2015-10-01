class RenderController < ApplicationController

	def render

		send_data renderer.render(params[:math])[:data]

	end

	def mathematical_options
		{
			ppi: 300.0,
			zoom: 0.25,
			format: :png
		}
	end

	def renderer
		@renderer ||= Mathematical.new(mathematical_options)
	end

end