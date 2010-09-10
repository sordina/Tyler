require 'rubygems'
require 'RMagick'

class Tyler
	class << self
		def tile file
			i = nil

			case file
			when Magick::Image
				i = file
			when Magick::ImageList
			when File, String
				l = Magick::ImageList.new file
				i = l[0]
			else
				i = Magick::Image.new file
			end

			x = i.columns
			y = i.rows
			x_ = x / 2
			y_ = y / 2

			t = i.clone
			t.background_color = 'transparent'
			v = t.vignette

			result = v.roll(x_,y_).dissolve v, 1.0
			result = result.roll(x_,0).dissolve v, 1.0
			result = result.roll(x_,y_).dissolve v, 1.0

			result.alpha Magick::DeactivateAlphaChannel
			result
		end
	end
end
