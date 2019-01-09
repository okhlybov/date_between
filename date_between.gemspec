Gem::Specification.new do |spec|
  spec.name = 'date_between'
  spec.version = '0.1'
  spec.author = 'Oleg A. Khlybov'
  spec.email = 'fougas@mail.ru'
  spec.homepage = 'https://bitbucket.org/fougas/date_between'
  spec.summary = 'Computes how many calendar years, months and days are between two dates'
  spec.files = Dir.glob ['lib/**/*.rb', 'test/**/*.rb']
  spec.required_ruby_version = '>= 2.0'
  spec.licenses = ['BSD-3-Clause']
end