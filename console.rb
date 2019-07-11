require('pry')
require_relative('models/movie')
require_relative('models/star')
require_relative('models/casting')

Movie.delete_all()
Star.delete_all()

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

star1 = Star.new({
  'first_name' => 'Keanu',
  'last_name' => 'Reeves'
  })

star1.save()

star2 = Star.new({
  'first_name' => 'Josh',
  'last_name' => 'Hero'
  })

star2.save()

  binding.pry
  nil
