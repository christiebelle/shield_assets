require_relative("../db/sql_runner")

class Hero

  def initialize(options)
    @id = options["id"].to_i
    @name = options["name"]
    @secret_identity = options["secret_identity"]
    @skill = options["skill"]
    @squad = options["squad"]
  end

  def save()
    sql = "INSERT INTO heroes (name, secret_identity, skill, squad) VALUES ($1,$2,$3,$4) RETURNING id;"
    values = [@name, @secret_identity, @skill, @squad]
    @id = SqlRunner.run(sql, values).first()["id"].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM heroes;"
    SqlRunner.run(sql)
  end


end
