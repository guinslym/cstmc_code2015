class User
  include Mongoid::Document
  field :name, type: String
  field :country, type: String
  field :age, type: Integer
end
