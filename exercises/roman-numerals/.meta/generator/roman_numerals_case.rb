require 'generator/exercise_case'

class RomanNumeralsCase < Generator::ExerciseCase
  def name
    'test_%s' % number.to_s
  end

  def workload
    "assert_equal '#{expected}', #{actual}"
  end

  private

  def actual
    '%s.to_roman' % number.to_s
  end

end
