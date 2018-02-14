class Hero

  def initialize(options)
    @id = options["id"].to_i
    @name = options["name"]
    @secret_identity = options["secret_identity"]
    @skill = options["skill"]
    @squad = options["squad"]
  end


end
