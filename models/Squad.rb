class Squad

  attr_reader :id
  attr_accessor :name, :logo_url

  def initialize(options)
    @id = options["id"].to_i
    @name = options["name"]
    @logo_url = options["logo_url"]
  end

  def save()
    sql = "INSERT INTO squads (name, logo_url) VALUES ($1, $2) RETURNING id;"
    values = [@name, @logo_url]
    @id = SqlRunner.run(sql, values).first["id"].to_i
  end

  def self.all
    sql = "SELECT * FROM squads;"
    SqlRunner.run(sql).map { |squad| Squad.new(squad) }
  end

  def self.delete_all
    SqlRunner.run("DELETE FROM squads;")
  end

  def self.find(id)
    sql = "SELECT * FROM squads WHERE id = $1;"
    values = [id]
    Squad.new(SqlRunner.run(sql, values).first)
  end

end
