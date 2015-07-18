require "mini_test_practice/version"

module MiniTestPractice
  class Myclass
    def odd?(ti)
      ti % 2 != 0
    end

    def check_number?(str)
      if str.to_i >= 1000 && str.to_i <= 9999 then
        return !odd?(str.to_i)
      end
      return false
    end

    def enough_length?(str)
      str.length >= 3 && str.length <= 8
    end

    def divide(ti1, ti2)
      ti2 / ti1
    end

    def fizz_buzz(ti)
      rtn = ""
      rtn = "Fizz" if (ti % 3 == 0)
      rtn = rtn + "Buzz" if (ti % 5 == 0)
      return rtn
    end

    def hello
      print "Hello"
    end
  end
end
