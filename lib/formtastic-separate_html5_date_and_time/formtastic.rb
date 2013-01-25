class SeparateDateAndTimePickerInput < Formtastic::Inputs::DatetimePickerInput
  def to_html
    input_wrapping do
      label_html <<
      builder.text_field(date_method, date_input_html_options) <<
      builder.text_field(time_method, time_input_html_options)
    end
  end

  def date_input_html_options
    { 'type' => 'date', 'value' => date_value }
  end


  def time_input_html_options
    { 'type' => 'time', 'value' => time_value }
  end

  def date_method
    "#{method}(date)"
  end

  def time_method
    "#{method}(time)"
  end

  def date_value
    value_parts.first
  end

  def time_value
    value_parts.last
  end

  def value_parts
    @value_parts ||= (value || '').split(' ')
  end
end

