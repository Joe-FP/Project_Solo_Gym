require('minitest/autorun')
require('minitest/rg')
require_relative( '../../db/sql_runner' )

require_relative('../member.rb')

class MemberTest < MiniTest::Test

  def setup
    @member1 = Member.new({
      'name'=>'Joe Pollock',
      'contact_number'=>'07468310987',
      'email'=>'abc@gmail.com',
      'address'=>'5 Moon Lane, MO1 L10',
      'premium_member'=>'true'
      })

    @member2 = Member.new({
      'name'=>'John Smith',
      'contact_number'=>'07899645243',
      'email'=>'vev@gmail.com',
      'address'=>'5 Star Lane, MO1 L11',
      'premium_member'=>'false'
      })
  end

  def test_save()
    @member1.save
    @member2.save
    assert_equal(2, Member.count)
  end

end
