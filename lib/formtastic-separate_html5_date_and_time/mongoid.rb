require 'mongoid'
require 'formtastic-separate_html5_date_and_time/processor'

module Mongoid
  module ProcessSeparateDateAndTimePickerInputs
    def process_attributes(attrs = nil, role = :default, guard_protected_attributes = true)
      super Formtastic::SeparateDateAndTimePickerInput::Processor.process(attrs), role, guard_protected_attributes
    end
  end
end

