require_relative("../db/sql_runner")
require_relative("./squad")

class Villain

  attr_reader :name, :evil_identity, :skill

  def initialize(options)
    @id = options["id"].to_i
    @name = options["name"]
    @evil_identity = options["evil_identity"]
    @skill = options["skill"]
    @squad_id = options["squad_id"].to_i
  end

  def save()
    sql = "INSERT INTO villains (name, evil_identity, skill, squad_id) VALUES ($1,$2,$3,$4) RETURNING id;"
    values = [@name, @evil_identity, @skill, @squad_id]
    @id = SqlRunner.run(sql, values).first()["id"].to_i
  end

  def squad
    sql = "SELECT * FROM squads WHERE id = $1;"
    values = [@squad_id]
    return Squad.new(SqlRunner.run(sql, values).first)
  end

  def self.find(id)
    sql = "SELECT * FROM villains WHERE id = $1;"
    values = [id]
    return Villain.new(SqlRunner.run(sql, values).first)
  end

  def self.all()
    sql = "SELECT * FROM villains;"
    list = SqlRunner.run(sql)
    return list.map { |baddies| Villain.new(baddies) }
  end

  def self.delete_all()
    sql = "DELETE FROM villains;"
    SqlRunner.run(sql)
  end


end
