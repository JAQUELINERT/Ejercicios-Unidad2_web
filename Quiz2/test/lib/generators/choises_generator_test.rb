require 'test_helper'
require 'generators/choises/choises_generator'

class ChoisesGeneratorTest < Rails::Generators::TestCase
  tests ChoisesGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
