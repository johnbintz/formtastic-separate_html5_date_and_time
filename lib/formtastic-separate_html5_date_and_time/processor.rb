module Formtastic
  module SeparateDateAndTimePickerInput
    class Processor
      def self.process(attrs)
        if attrs
          attrs = Hash[attrs.dup]

          datetime_attrs = {}

          attrs.each do |key, value|
            if attr = key[/\A(.*)\((date|time)\)\Z/, 1]
              datetime_attrs[attr] ||= {}
              datetime_attrs[attr][key] = value
            end
          end

          datetime_attrs.each do |attr, values|
            attrs[attr] = values["#{attr}(date)"] + ' ' + values["#{attr}(time)"]

            attrs.delete("#{attr}(date)")
            attrs.delete("#{attr}(time)")
          end
        end

        attrs
      end
    end
  end
end
