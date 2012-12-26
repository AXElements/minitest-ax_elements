require './lib/minitest/ax_elements/version'

Gem::Specification.new do |s|
  s.name     = 'minitest-ax_elements'
  s.version  = MiniTest::Accessibility::VERSION

  s.summary     = 'MiniTest extensions for using AXElements'
  s.description = <<-EOS
MiniTest extensions for using AXElements
  EOS
  s.authors     = ['Mark Rada']
  s.email       = 'mrada@marketcircle.com'
  s.homepage    = 'http://github.com/AXElements/minitest-ax_elements'
  s.licenses    = ['BSD 3-clause']
  s.has_rdoc    = 'yard'


  s.files            =
    Dir.glob('lib/**/*.rb*') +
    ['Rakefile', 'README.markdown', 'History.markdown', '.yardopts']
  s.test_files       =
    Dir.glob('test/**/*_spec.rb') +
    [ 'test/helper.rb' ]


  s.add_runtime_dependency 'AXElements', '1.0.0.beta'
  s.add_runtime_dependency 'minitest',   '~> 4.3'

  s.add_development_dependency 'yard',     '~> 0.8.3'
  s.add_development_dependency 'kramdown', '~> 0.14.1'
end
