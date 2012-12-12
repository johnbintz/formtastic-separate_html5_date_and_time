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
            if !values["#{attr}(date)"].blank?
              value = (values["#{attr}(date)"] + ' ' + values["#{attr}(time)"]).strip

              if !value.blank?
                attrs[attr.to_sym] = value
              end
            end

            attrs.delete("#{attr}(date)")
            attrs.delete("#{attr}(time)")
          end
        end

        attrs
      end
    end
  end
end

