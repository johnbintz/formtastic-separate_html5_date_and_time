require 'formtastic-separate_html5_date_and_time/processor'

module ActiveRecord
  module ProcessSeparateDateAndTimePickerInputs
    def assign_attributes(attrs = nil, *args)
      super Formtastic::SeparateDateAndTimePickerInput::Processor.process(attrs), *args
    end

    def update_attributes(attrs = nil)
      super Formtastic::SeparateDateAndTimePickerInput::Processor.process(attrs)
    end
  end
end

