require 'test_helper'

class MiniTestPracticeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def setup
    @myclass = MiniTestPractice::Myclass.new
  end

  def test_odd
    assert @myclass.odd?(3), "odd?(3) = true"
    assert !@myclass.odd?(10), "odd?(10) = false"
    assert @myclass.odd?(11), "odd?(11) = true"
    assert !@myclass.odd?(12), "odd?(12) = false"
  end

  def test_check_number
    assert @myclass.check_number?("1234"), 'check_number?("1234") = true'
    assert !@myclass.check_number?("1235"), 'check_number?("1235") = false'
    assert !@myclass.check_number?("124"), 'check_number?("124") = false'
    assert !@myclass.check_number?("12346"), 'check_number?("12346") = false'
    assert !@myclass.check_number?("0124"), 'check_number?("0124") = false'
    assert !@myclass.check_number?("a124"), 'check_number?("a124") = false'
    assert !@myclass.check_number?("-124"), 'check_number?("-124") = false'
  end

  def test_enough_length
    assert @myclass.enough_length?("123"), 'enough_length("123") = true'
    assert @myclass.enough_length?("1234"), 'enough_length("1234") = true'
    assert @myclass.enough_length?("12345"), 'enough_length("12345") = true'
    assert @myclass.enough_length?("123456"), 'enough_length("123456") = true'
    assert @myclass.enough_length?("1234567"), 'enough_length("1234567") = true'
    assert @myclass.enough_length?("12345678"), 'enough_length("12345678") = true'
    assert !@myclass.enough_length?("123456789"), 'enough_length("123456789") = false'
    assert !@myclass.enough_length?("12"), 'enough_length("12") = false'
  end

  def test_divide
    assert_equal 3, @myclass.divide(3, 9)
    assert_equal 2, @myclass.divide(4, 9)
    assert_raises(ZeroDivisionError) {@myclass.divide(0, 9)}
  end

  def test_fizz_buzz
    assert_equal "", @myclass.fizz_buzz(1)
    assert_equal "", @myclass.fizz_buzz(2)
    assert_equal "Fizz", @myclass.fizz_buzz(3)
    assert_equal "", @myclass.fizz_buzz(4)
    assert_equal "Buzz", @myclass.fizz_buzz(5)
    assert_equal "Fizz", @myclass.fizz_buzz(6)
    assert_equal "", @myclass.fizz_buzz(7)
    assert_equal "FizzBuzz", @myclass.fizz_buzz(15)
  end

  def test_hello
    aio = capture_io {@myclass.hello}
    assert_equal "Hello", aio[0]
    assert_equal "", aio[1]
  end
end
