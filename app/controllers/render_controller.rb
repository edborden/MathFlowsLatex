class RenderController

	def render

		math = params[:math]
		content_type 'image/svg+xml'
		to_svg(mode.call(math))[:data]

	end

	def mathmatical
		@mathmatical ||= Mathematical.new
	end

	def to_svg(formula)
		formula = URI.decode(formula).sub(/\\\\/, "\\\\\\\\")
		result = mathmatical.render(formula)
		halt(406) if result[:exception]
		result
	end

end