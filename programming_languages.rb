require "pry"
def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language_data|
    case style
    when :oo
      language_data.each do |language_name, attributes|
        case language_name
        when :ruby
          attributes.each do |type, type_value|
            new_hash[:ruby] = {type => type_value, :style => [style]}
          end
        when :javascript
          attributes.each do |type, type_value|
            new_hash[:javascript] = {type => type_value, :style => [style]}
          end
        when :python
          attributes.each do |type, type_value|
            new_hash[:python] = {type => type_value, :style => [style]}
          end
        when :java
          attributes.each do |type, type_value|
            new_hash[:java] = {type => type_value, :style => [style]}
          end
        end
      end
    when :functional
      language_data.each do |language_name, attributes|
        case language_name
        when :clojure
          attributes.each do |type, type_value|
            new_hash[:clojure] = {type => type_value, :style => [style]}
          end
        when :erlang
          attributes.each do |type, type_value|
            new_hash[:erlang] = {type => type_value, :style => [style]}
          end
        when :scala
          attributes.each do |type, type_value|
            new_hash[:scala] = {type => type_value, :style => [style]}
          end
        when :javascript
          attributes.each do |type, type_value|
            new_hash[:javascript][:style] << style
          end
        end
      end
    end
  end
  new_hash
end
