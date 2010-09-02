Gem::Specification.new do |s|

	s.name = %q{tyler}
	s.version = "0.0.1"
	s.date = %q{2010-09-02}
	s.authors = ["Lyndon Maydwell"]
	s.email = %q{maydwell@gmail.com}
	s.summary = %q{Allows easy generation of tiling textures.}
	s.homepage = %q{http://github.com/sordina/Tyler}
	s.description = %q{Allows easy generation of tiling textures.}
	s.files = [ "README.md", "demo.rb", "lib/tyler.rb"]

	s.add_dependency 'rmagick' '>=2.0'

	s.rubyforge_project = "nowarning"

end
