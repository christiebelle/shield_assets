require_relative("../db/sql_runner")

class Hero

  attr_reader :name, :secret_identity, :skill

  def initialize(options)
    @id = options["id"].to_i
    @name = options["name"]
    @secret_identity = options["secret_identity"]
    @skill = options["skill"]
    @squad_id = options["squad_id"].to_i
  end

  def save()
    sql = "INSERT INTO heroes (name, secret_identity, skill, squad_id) VALUES ($1,$2,$3,$4) RETURNING id;"
    values = [@name, @secret_identity, @skill, @squad_id]
    @id = SqlRunner.run(sql, values).first()["id"].to_i
  end

  def squad
    sql = "SELECT name FROM squads WHERE id = $1;"
    values = [@squad_id]
    return SqlRunner.run(sql, values).first["name"]
  end

  def self.find(id)
    sql = "SELECT * FROM heroes WHERE id = $1;"
    values = [id]
    return Hero.new(SqlRunner.run(sql, values).first)
  end

  def self.all()
    sql = "SELECT * FROM heroes;"
    list = SqlRunner.run(sql)
    return list.map { |hero| Hero.new(hero) }
  end

  def self.delete_all()
    sql = "DELETE FROM heroes;"
    SqlRunner.run(sql)
  end


end
