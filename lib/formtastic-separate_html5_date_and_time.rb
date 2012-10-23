require "formtastic-separate_html5_date_and_time/version"

module Formtastic
  module SeparateHtml5DateAndTime
    class Railtie < ::Rails::Railtie
      initializer 'separate_html5_date_and_time.initialize' do
        require 'formtastic'
        require 'formtastic-separate_html5_date_and_time/formtastic'

        if defined?(Mongoid::Document)
          require 'formtastic-separate_html5_date_and_time/mongoid'
        end
      end
    end
  end
end

