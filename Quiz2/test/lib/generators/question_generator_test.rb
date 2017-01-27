require 'test_helper'
require 'generators/question/question_generator'

class QuestionGeneratorTest < Rails::Generators::TestCase
  tests QuestionGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
