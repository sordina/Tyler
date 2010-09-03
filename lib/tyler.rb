require 'rubygems'
require 'RMagick'

class Tyler
	class << self
		def tile file
			l = Magick::ImageList.new file
			i = l[0]
			x = i.columns
			y = i.rows
			x_ = x / 2
			y_ = y / 2

			t = i.clone
			t.background_color = 'transparent'
			v = t.vignette

			result = v.roll(x_,y_).dissolve v, 1.0
			result = result.roll(x_,0).dissolve v, 1.0
			result = result.roll(0,y_).dissolve v, 1.0

			result.alpha Magick::DeactivateAlphaChannel
			result
		end
	end
end

__END__

20028  file output.png
20029  convert | grep vig
20030  convert -vignette background.png tapered.png
20031  convert -vignette "50x50" background.png tapered.png
20032  open tapered.png
20033  convert -roll "+212+197" tapered.png output.png
20034  open output.png
20035  l
20036  convert | grep diso
20037  convert | grep dis
20038  convert | less
20039  convert -dissolve 50 tapered.png output.png result.png
20040  convert -dissolve 50 tapered.png output.png result.png
20041  composite -dissolve 50 tapered.png output.png result.png
20042  open result.png
20043  cp result.png ~/Projects/Work/Sordina-Productions/Web-Design/Pilot/Sordina/public/images/background2.png
