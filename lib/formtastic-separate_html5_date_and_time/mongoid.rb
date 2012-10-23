require 'mongoid'

module Mongoid
  module ProcessSeparateDateAndTimePickerInputs
    def process_attributes(attrs = nil, role = :default, guard_protected_attributes = true)
      if attrs
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

      super(attrs, role, guard_protected_attributes)
    end
  end
end

