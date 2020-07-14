require 'generator/exercise_case'

class SayCase < Generator::ExerciseCase
  def workload
    [
      "number = #{underscore(number)}",
      assertion,
    ]
  end

  private

  def assertion
    if error_expected?
      assert_raises(ArgumentError, subject_of_test)
    else
      assert_equal(expected, subject_of_test)
    end
  end

  def subject_of_test
    'Say.new(number).in_english'
  end
end
