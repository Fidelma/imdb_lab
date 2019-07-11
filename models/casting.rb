require_relative('./movie')
require_relative('./star')
require_relative('../db/sql_runner')

class Casting

  attr_reader :id, :movie_id, :star_id
  attr_accessor :fee

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @movie_id = options['movie_id']
    @star_id = options['star_id']
    @fee = options['fee']
  end

  def save()
    sql = "INSERT INTO castings
    (
      movie_id,
      star_id,
      fee
      )
      VALUES ($1, $2, $3)
      RETURNING id"
    values = [@movie_id, @star_id, @fee]
    SqlRunner.run(sql, values)
  end

end
