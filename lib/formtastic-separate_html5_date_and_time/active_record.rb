require 'formtastic-separate_html5_date_and_time/processor'

module ActiveRecord
  module ProcessSeparateDateAndTimePickerInputs
    def assign_multiparameter_attributes(attrs)
      Formtastic::SeparateDateAndTimePickerInput::Processor.process(attrs).each do |attribute, value|
        public_send("#{attribute}=", value)
      end
    end

    def update_attributes(attrs = nil)
      super Formtastic::SeparateDateAndTimePickerInput::Processor.process(attrs)
    end
  end
end
