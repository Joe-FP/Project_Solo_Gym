require_relative( '../db/sql_runner' )

class Member

  attr_reader(:name, :contact_number, :email, :address, :premium_member, :id)

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @contact_number = options['contact_number']
    @email = options['email']
    @address = options['address']
    @premium_member = options['premium_member']
  end

  def save()
    sql = "INSERT INTO members
    (name, contact_number, email, address, premium_member)
    VALUES
    ($1, $2, $3, $4, $5)
    RETURNING id"
    values = [@name, @contact_number, @email, @address, @premium_member]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE members SET
    (name, contact_number, email, address, premium_member)
    VALUES
    ($1, $2, $3, $4, $5)
    WHERE id = $6"
    values = [@name, @contact_number, @email, @address, @premium_member, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM members WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM members"
    results = SqlRunner.run(sql)
    return results.map { |member| Member.new(member) }
  end

  def self.find(id)
    sql = "SELECT * FROM members WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Member.new(results.first)
  end

  def self.delete_all
    sql = "DELETE FROM members"
    SqlRunner.run(sql)
  end

  # def sessions()
  #   sql = "SELECT sessions.* FROM sessions INNER JOIN bookings ON bookings.session_id = sessions.id WHERE bookings.member_id = $1"
  #   values = [@id]
  #   results = SqlRunner.run(sql, values)
  #   return results.map { |session| Session.new(session) }
  # end

end
