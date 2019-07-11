require('pry')
require_relative('models/movie')
require_relative('models/star')
require_relative('models/casting')

Movie.delete_all()

movie1 = Movie.new({
  'title' => 'John Wick',
  'genre' => 'Action'
  })

movie1.save()  

movie2 = Movie.new({
  'title' => 'Spider man',
  'genre' => 'superhero'
  })

  movie2.save()

  binding.pry
  nil
