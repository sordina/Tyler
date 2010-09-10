Gem::Specification.new do |s|

	s.name = %q{tyler}
	s.version = "0.0.3"
	s.date = %q{2010-09-02}
	s.authors = ["Lyndon Maydwell"]
	s.email = %q{maydwell@gmail.com}
	s.summary = %q{Allows easy generation of tiling textures.}
	s.homepage = %q{http://github.com/sordina/Tyler}
	s.description = %q{Allows easy generation of tiling textures, via files, or in memory!}
	s.files = [ "README.md", "demo.rb", "lib/tyler.rb"]

	s.rubyforge_project = "nowarning"

	if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
		s.add_runtime_dependency(%q<rmagick>, [">= 2"])
	else
		s.add_dependency(%q<rmagick>, [">= 2"])
	end

end
