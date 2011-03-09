require 'filter_assertions/assertions'

# Extends the ActiveSupport::TestCase class.
# Adds assertions to test if a before_filter is applied or skipped
class ActiveSupport::TestCase
  include FilterAssertions::Assertions
end