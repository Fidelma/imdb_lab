require_relative('../db/sql_runner')

class Movie

  attr_accessor :title, :genre
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
  end

  def save()
    sql = "INSERT INTO movies
    (
      title,
      genre
      )
      VALUES ($1, $2)
      RETURNING id"
    values = [@title, @genre]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM movies"
    result = SqlRunner.run(sql)
    return result.map { |movie| Movie.new(movie)}
  end

  def self.delete_all()
    sql = "DELETE FROM movies"
    SqlRunner.run(sql)
  end


end
